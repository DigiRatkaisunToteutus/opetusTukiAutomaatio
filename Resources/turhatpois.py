import openpyxl

def delete_column(file_path, column, output_file):
    """
    Removes the column and writes it to the output file.
    :param file_path: Path to the original Excel file.
    :param column: Column to delete (e.g., 'C').
    :param output_file: Path to save the modified Excel file.
    """
    # Load Excel file
    wb = openpyxl.load_workbook(file_path)
    sheet = wb.active

    # Delete specified column
    sheet.delete_cols(3)  # 3 is the index of column C (1-based)

    # Save the modified file
    wb.save(output_file)
    print(f"Column {column} deleted and saved to {output_file}")

# Call the function
delete_column(
    r"C:\Users\annel\PycharmProjects\opetusTukiAutomaatio\Data\Data-orig.xlsx",
    "C",
    r"C:\Users\annel\PycharmProjects\opetusTukiAutomaatio\Data\Data-clean.xlsx"
)
