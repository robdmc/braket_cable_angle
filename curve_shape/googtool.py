import gspread
from oauth2client.service_account import ServiceAccountCredentials
import pandas as pd


class Google:
    def __init__(self):
        """
        See http://gspread.readthedocs.io/en/latest/oauth2.html for setting
        up sheets to enable api
        """
        self._api = None
        self._document = None
        self._sheet = None
        self._df_cache = {}

    @property
    def api(self):
        if self._api is None:
            # set up auth stuff
            scope = [
                'https://spreadsheets.google.com/feeds',
                'https://www.googleapis.com/auth/drive'
            ]
            credentials = ServiceAccountCredentials.from_json_keyfile_name('./google_sheet_auth.json', scope)
            self._api = gspread.authorize(credentials)
        return self._api

    @property
    def sheet(self):
        if self._sheet is None:
            raise ValueError('Trying to access unpopulated sheet')
        return self._sheet

    @property
    def document(self):
        if self._document is None:
            raise ValueError('Trying to access unpopulated document')
        return self._document

    def with_document(self, document_title):
        """
        Specify the name of the google sheet document you want to access
        """
        if not self._document or self._document.title != document_title:
            # load the doc
            self._document = self.api.open(document_title)
        return self

    def with_sheet(self, sheet_title):
        """
        Specify the name of the sheet within the google sheet document you wnat to access
        """
        # load the sheet
        if not self._sheet or self._sheet.title != sheet_title:
            self._sheet = self.document.worksheet(sheet_title)
        return self

    def to_dataframe(self, header_row=1, reload=True):
        """
        Dump the current sheet to a dataframe using the specified row
        as a source for column names
        """
        # get a key to identify this frame in the cache
        key = (self.document.title, self.sheet.title)

        # fill cache if needed and returned cached frame
        df = self._df_cache.get(key)
        if df is None or reload:
            recs = self.sheet.get_all_records(head=header_row)
            columns = self.sheet.row_values(header_row)
            self._df_cache[key] = pd.DataFrame(recs)[columns]
        return self._df_cache[key].copy()

    def store_frame(self, df):
        df = df.reset_index(drop=True).fillna('')
        self.sheet.clear()
        existing_row_count = self.sheet.row_count
        needed_row_count = len(df) + 10
        existing_col_count = self.sheet.col_count
        needed_col_count = len(df.columns) + 10

        missing_row_count = needed_row_count - existing_row_count
        missing_col_count = needed_col_count - existing_col_count
        if missing_row_count > 0:
            self.sheet.add_rows(missing_row_count)

        if missing_col_count > 0:
            self.sheet.add_cols(missing_col_count)
        self.sheet.append_row(list(df.columns))
        min_row = 1
        max_row = len(df) + 1
        min_col = 1
        max_col = len(df.columns)
        cells = self.sheet.range(min_row, min_col, max_row, max_col)
        for cell in cells:
            if cell.row == 1:
                cell.value = list(df.columns)[cell.col - 1]
            else:
                cell.value = df.values[cell.row - 2, cell.col - 1]
        self.sheet.update_cells(cells)
