import mmap
import re
from functools import lru_cache

import pandas as pd


class Las:
    def __init__(
            self,
            file_name,
            angle_field: str = 'rb_sl',
            value_field: str = 'freq_emf_sl'
    ) -> None:
        self.file_name = file_name
        self.angle_field = angle_field
        self.value_field = value_field

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

    @lru_cache()
    def _get_df(self) -> pd.DataFrame:
        df = self.df_raw[['time', self.angle_field, self.value_field]]
        df = df.rename(columns={self.angle_field: 'theta', self.value_field: 'signal'})
        return df

    @property
    def df(self) -> pd.DataFrame:
        return self._get_df()











