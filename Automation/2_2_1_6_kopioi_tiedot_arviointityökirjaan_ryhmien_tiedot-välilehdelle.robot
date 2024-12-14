*** Settings ***
Library    Process

*** Variables ***
${EXCEL_FILE}    ../Data/arviointityokirja.xlsx  # Adjust path as necessary

*** Test Cases ***
Move Data Using Python Script
    [Documentation]    Moves data from the first sheet to a new Sheet2 using a Python script.
    ${result}=    Run Process    python    ../Resources/2_2_1_6_kopioi_tiedot_arviointityökirjaan_ryhmien_tiedot-välilehdelle.py   ${EXCEL_FILE}
    Log    ${result.stdout}
    Log    ${result.stderr}
    Should Not Contain    ${result.stdout}    Traceback    Script execution should not error
    Should Not Contain    ${result.stderr}    Traceback    There should be no errors in stderr