Documentation       TÄMÄ EI TOIMI

*** Settings ***
Library    /Resources/turhatpois.py

*** Variables ***
${EXCEL_FILE}     Data/Data-orig.xlsx
${COLUMN}         C
${OUTPUT_FILE}    Data/Data-clean.xlsx

*** Test Cases ***
Delete Column From Excel
    ${result}=    delete_column    ${EXCEL_FILE}    ${COLUMN}    ${OUTPUT_FILE}
    Should Contain    ${result}    Column C deleted and saved to ${OUTPUT_FILE}
    Log    You made it girl!

