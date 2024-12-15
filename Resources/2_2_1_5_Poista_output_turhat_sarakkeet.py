import openpyxl


def delete_column(file_path, column, output_file):
    """
    Removes the column and writes it to the output file.
    :param file_path: Path to the original Excel file.
    :param column: Column to delete (e.g., 'C').
    :param output_file: Path to save the modified Excel file.
    """
    # Lataa Excel-tiedosto
    wb = openpyxl.load_workbook(file_path)
    sheet = wb.active

    # Poista annettu sarake
    sheet.delete_cols(3)  # 3 on C-sarakkeen indeksi Excelissä (1-pohjainen)

    # Tallenna muokattu tiedosto
    wb.save(output_file)
    print(f"Column {column} deleted and saved to {output_file}")

# Kutsu funktiota
delete_column(
    r"C:\Users\annel\PycharmProjects\opetusTukiAutomaatio\Data\Data-orig.xlsx",
    "C",
    r"C:\Users\annel\PycharmProjects\opetusTukiAutomaatio\Data\Data-clean.xlsx"
)
