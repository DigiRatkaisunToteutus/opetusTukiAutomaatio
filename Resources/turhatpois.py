import openpyxl

def delete_column(file_path, column, output_file):
    """
    Poistaa annetun sarakkeen Excel-tiedostosta ja tallentaa tuloksen.
    :param file_path: Data/Data-orig.xlsx
    :param column: C
    :param output_file: Data/Data-clean.xlsx
    """
    # Lataa Excel-tiedosto
    wb = openpyxl.load_workbook(file_path)
    sheet = wb.active

    # Poista sarake C suoraan
    sheet.delete_cols(3)  # 3 on C-sarakkeen indeksi Excelissä

    # Tallenna muokattu tiedosto
    wb.save(output_file)
    return f"Column {column} deleted and saved to {output_file}"
