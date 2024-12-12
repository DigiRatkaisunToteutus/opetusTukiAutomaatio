*** Settings ***
Library    SeleniumLibrary
Library    Collections
Library    OperatingSystem
Library    BuiltIn

*** Variables ***
${EXCEL_FILE}    ${CURDIR}..\Resources\allDiscussions.xlsx

*** Keywords ***
Avaa Excel
    [Arguments]    ${EXCEL_FILE}
    ${workbook}=    Run Keyword    openpyxl.load_workbook    ${EXCEL_FILE}
    ${sheet_names}=    Run Keyword    list    ${workbook}.sheetnames
    Log    ${sheet_names}


