import pandas as pd
import sys

def move_data(source_file):
    # Load the workbook
    print(f"Loading file: {source_file}")
    df = pd.read_excel(source_file, sheet_name=None)

    # Take the data from the first sheet. We assume there's at least one.
    first_sheet_name = list(df.keys())[0]
    data = df[first_sheet_name]

    print(f"First sheet: {first_sheet_name}")
    print(f"Data from first sheet:\n{data.head()}")  # Print first few rows of data for debugging

    # Write back to the same workbook in a new sheet
    with pd.ExcelWriter(source_file, engine='openpyxl', mode='a') as writer:
        data.to_excel(writer, sheet_name='Sheet2', index=False)

    print(f"Data from '{first_sheet_name}' moved to 'Sheet2'")

if __name__ == "_main_":
    source_file = sys.argv[1]
    move_data(source_file)