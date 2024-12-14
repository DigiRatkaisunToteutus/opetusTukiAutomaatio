*** Settings ***
Library    RPA.Excel.Files

*** Variables ***
${EXCEL_FILE}    ../Resources/siirto.xlsx

*** Test Cases ***
Open Excel File
    [Documentation]    Tämä avaa Excel-tiedoston nimeltä siirto.xlsx Resources-kansiosta.
    Open Workbook    ${EXCEL_FILE}
    ${sheet_names}=    List Worksheets
    Log    Tiedoston taulut: ${sheet_names}
    Close Workbook
