import os
import mmap
import re
from functools import lru_cache
from typing import Optional

import holoviews as hv
import pandas as pd


class Las:
    def __init__(
            self,
            file_name,
            name: str = '',
            angle_field: str = 'rb_sl',
            value_field: str = 'freq_emf_sl',
            normalize: bool = True,
            positive_angles: bool = False,
            df: Optional[pd.DataFrame] = None,
            **kwargs
    ) -> None:
        """
        This class manges the handling of las files.  You can name each
        Las object with a desscriptive name (defaults to the filename).


        Any extra kwargs are attached as attributes

        From there, you can use the .define_section() method to create a
        time slice of the data in the object.  A new Las object containing
        only data from that timeslice can then be accessed using the
        .section() method.

        Here is an example:

            las = Las(file_name=my_file, name='all_data')
            display(las.plot_time())

            las.define_section('first_half', 0, 277)
            las.define_section('second_half', 351, 482)

            las.section('first_half').plot_time()
            las.section('second_half').plot_time()
        """
        for k, v in kwargs.items():
            setattr(self, k, v)

        self.file_name = file_name
        self.angle_field = angle_field
        self.value_field = value_field
        self._normalize = normalize
        self._df_preloaded = df
        self._name = name
        self._positive_angles = positive_angles

    @lru_cache()
    def read_las(self, input_filename: str) -> pd.DataFrame:
        """
        Open a .las file and parse it into a dataframe
        """
        rex_header = re.compile(r'#\s+(TIME.*)')

        # Find the column names for the dataframe
        columns = None
        with open(input_filename) as f:
            for line in f.readlines():
                m = rex_header.match(line)
                if m:
                    columns = m.group(1).lower().split()
                    break

        # Bad file if you can't find columns
        if columns is None:
            raise RuntimeError('Columns not found')

        # Use memory mapped file to search for data marker and read the dataframe
        with open(input_filename, 'r+b') as f:
            with mmap.mmap(f.fileno(), 0) as mm:
                marker_loc = mm.find(b'~A') + 4
                mm.seek(marker_loc)
                df = pd.read_csv(mm, sep=r'\s+', names=columns)
        return df

    @property
    def df_raw(self) -> pd.DataFrame:
        """
        The raw data from the las file
        """
        return self.read_las(self.file_name)

    @property
    def df(self) -> pd.DataFrame:
        """
        The cleaned up data from the las file
        """
        if self._df_preloaded is not None:
            return self._df_preloaded.copy()
        else:
            df = self.df_raw[['time', self.angle_field, self.value_field]]
            df = df.rename(columns={self.angle_field: 'bearing', self.value_field: 'signal'})
            if self._positive_angles:
                df.loc[:, 'bearing'] = df.bearing + 180.
            if self._normalize:
                median_val = df[df.signal.abs() > 1e-6].signal.median()
                df.loc[:, 'signal'] = df.signal * 500 / median_val
            return df.copy()

    def section(self, name: str, min_time: float, max_time: float, **kwargs) -> 'Las':
        """
        Return a new Las object based on the provided section name.
        """
        df = self.df[(self.df.time >= min_time) & (self.df.time <= max_time)]
        if name is None:
            name = f'{self.name}.{name}'
        return self.__class__(
            file_name=self.file_name,
            angle_field=self.angle_field,
            value_field=self.value_field,
            normalize=self._normalize,
            df=df,
            positive_angles=self._positive_angles,
            name=name,
            **kwargs
        )

    @property
    def _default_name(self):
        """
        Return the default_name of this object
        """
        return f'{os.path.basename(self.file_name)}'

    @property
    def name(self):
        """
        Return the name of this object
        """
        out = self._default_name
        if self._name:
            out = self._name
        return out

    def __str__(self):
        return f"Las('{self.name})'"

    def __repr__(self):
        return self.__str__()

    def plot_time(self) -> hv.Overlay:
        """
        Makes a time plot of all the data in this file.
        """
        df = self.df
        c1 = hv.Curve((df.time, df.signal), 'Time', self.name, label='Scaled Signal')
        c1 *= hv.Scatter(c1)
        c2 = hv.Curve((df.time, df.bearing), 'Time', self.name, label='Bearing')
        c2 *= hv.Scatter(c2)
        return c1 * c2

    def plot_bearing(self) -> hv.Overlay:
        """
        Makes a time plot of all the data in this file.
        """
        df = self.df
        c1 = hv.Curve((df.time, df.signal), 'Time', self.name, label='Scaled Signal')
        c1 *= hv.Scatter(c1)
        c2 = hv.Curve((df.time, df.bearing), 'Time', self.name, label='Bearing')
        c2 *= hv.Scatter(c2)
        return c1 * c2

