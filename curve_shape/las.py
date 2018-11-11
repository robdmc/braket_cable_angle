import mmap
import re

import pandas as pd


def read_las(input_filename: str):
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
    with open('./data/LPC_S3-1_2BV.las', 'r+b') as f:
        with mmap.mmap(f.fileno(), 0) as mm:
            marker_loc = mm.find(b'~A') + 4
            mm.seek(marker_loc)
            df = pd.read_csv(mm, sep=r'\s+', names=columns)
    return df
