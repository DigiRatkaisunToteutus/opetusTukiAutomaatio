*** Settings ***
Library    SeleniumLibrary
Library    Collections
Library    OperatingSystem
Library    BuiltIn

*** Variables ***
${EXCEL_FILE}    ${CURDIR}C:\Users\kahar\Git_harjoitus\projekti\opetusTukiAutomaatio\Resources

*** Keywords ***
Avaa Excel
    [Arguments]    ${EXCEL_FILE}
    ${workbook}=    Run Keyword    openpyxl.load_workbook    ${EXCEL_FILE}
    ${sheet_names}=    Run Keyword    list    ${workbook}.sheetnames
    Log    ${sheet_names}


