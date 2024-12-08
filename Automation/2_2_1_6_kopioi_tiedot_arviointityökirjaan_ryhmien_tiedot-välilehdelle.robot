*** Settings ***
Library         OperatingSystem
Library         Collections
Library         openpyxl

*** Variables ***
${EXCEL_FILE}    testdata.xlsx
${SOURCE_SHEET}  Lähde
${TARGET_SHEET}  Kohde
${COLUMN_NAME}   Nimi

*** Test Cases ***
Copy Name Column to Another Sheet
    [Documentation]    Tämä testi kopioi "Nimi"-sarakkeen toiselle välilehdelle.
    Open Excel Workbook    ${EXCEL_FILE}
    ${names}=             Read Column Data    ${SOURCE_SHEET}    ${COLUMN_NAME}
    Write Data To Sheet   ${TARGET_SHEET}     ${names}
    Save Excel Workbook   ${EXCEL_FILE}
    Close Excel Workbook

*** Keywords ***
Open Excel Workbook
    [Arguments]    ${file}
    Open Workbook    ${file}

Read Column Data
    [Arguments]    ${sheet_name}    ${column_name}
    ${sheet}=      Get Worksheet    ${sheet_name}
    ${header_row}= 1
    ${column_index}=   Find Column Index    ${sheet}    ${column_name}    ${header_row}
    ${names}=      Create List
    FOR    ${row}    IN RANGE    ${header_row + 1}    ${sheet.max_row + 1}
        ${cell}=    Get Cell Value    ${sheet}    ${row}    ${column_index}
        Append To List    ${names}    ${cell}
    END
    [Return]    ${names}

Find Column Index
    [Arguments]    ${sheet}    ${column_name}    ${header_row}
    ${columns}=    Get Row Values    ${sheet}    ${header_row}
    ${index}=      Evaluate    ${columns}.index('${column_name}') + 1
    [Return]    ${index}

Write Data To Sheet
    [Arguments]    ${sheet_name}    ${data}
    ${sheet}=      Create Worksheet    ${sheet_name}    exist_ok=True
    ${row}=        1
    Set Cell Value    ${sheet}    ${row}    1    ${COLUMN_NAME}
    FOR    ${name}    IN    @{data}
        ${row}=    Evaluate    ${row} + 1
        Set Cell Value    ${sheet}    ${row}    1    ${name}
    END
