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
            df: Optional[pd.DataFrame] = None,
    ) -> None:
        self.file_name = file_name
        self.angle_field = angle_field
        self.value_field = value_field
        self._normalize = normalize
        self._sections = {}
        self._df_preloaded = df
        self._name = name

    @lru_cache()
    def read_las(self, input_filename: str) -> pd.DataFrame:
        """
        Return a dataframe from a .las file
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
        return self.read_las(self.file_name)

    @property
    def df(self) -> pd.DataFrame:
        if self._df_preloaded is not None:
            return self._df_preloaded
        else:
            df = self.df_raw[['time', self.angle_field, self.value_field]]
            df = df.rename(columns={self.angle_field: 'bearing', self.value_field: 'signal'})
            df.loc[:, 'bearing'] = df.bearing + 180.
            if self._normalize:
                median_val = df[df.signal.abs() > 1e-6].signal.median()
                df.loc[:, 'signal'] = df.signal * 500 / median_val
            return df

    def plot_time(self) -> hv.Overlay:
        """
        Makes a time plot of all the data in this file.
        Args:
            If section is defined, it must refer to an already created section
        """
        df = self.df
        c1 = hv.Curve((df.time, df.signal), 'Time', 'Value', label='Scaled Signal')
        c1 *= hv.Scatter(c1)
        c2 = hv.Curve((df.time, df.bearing), 'Time', 'Value', label='Bearing')
        c2 *= hv.Scatter(c2)
        return c1 * c2

    def define_section(self, slug, min_time, max_time) -> 'Las':
        """
        Take a time slice of the input frame and create a tagged frame from
        those values.  This frame will be placed in an attribute with a name
        matching the f'df_{slug}'.
        """
        df = self.df[(self.df.time >= min_time) & (self.df.time <= max_time)]
        self._sections[slug] = df

    def section(self, slug: str, name=None) -> 'Las':
        if slug not in self._sections:
            raise ValueError(f'{slug} not in {list(self._sections.keys())}')
        if name is None:
            name = f'{self.name}.{slug}'
        else:
            name = name
        return self.__class__(
            file_name=self.file_name,
            angle_field=self.angle_field,
            value_field=self.value_field,
            normalize=self._normalize,
            df=self._sections[slug],
            name=name,
        )

    @property
    def _default_name(self):
        return f'{os.path.basename(self.file_name)}'

    @property
    def name(self):
        out = self._default_name
        if self._name:
            out = self._name
        return out

    def __str__(self):
        return f"Las('{self.name})'"

    def __repr__(self):
        return self.__str__()















