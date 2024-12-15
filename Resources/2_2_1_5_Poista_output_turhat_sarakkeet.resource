# 2_2_1_5_Poista_output_turhat_sarakkeet.resource
Documentation       Tämä demottu opettajan kanssa

*** Settings ***
Library    /Resources/2_2_1_5_Poista_output_turhat_sarakkeet.py

*** Variables ***
${EXCEL_FILE}     Data/Data-orig.xlsx
${COLUMN}         C
${OUTPUT_FILE}    Data/Data-clean.xlsx

*** Test Cases ***
Delete Column From Excel
    ${result}=    delete_column    ${EXCEL_FILE}    ${COLUMN}    ${OUTPUT_FILE}
    Should Contain    ${result}    Column C deleted and saved to ${OUTPUT_FILE}


