*** Settings ***
Library    Process

*** Variables ***
${EXCEL_FILE}    D:\\Users\\Sonjis\\PycharmProjects\\opetusTukiAutomaatio5\\Data\\siirto.xlsx

${PYTHON_SCRIPT}    D:\\Users\\Sonjis\\PycharmProjects\\opetusTukiAutomaatio5\\Resources\\excel.py
*** Test Cases ***
Move Data Using Python Script
    [Documentation]    Moves data from the first sheet to a new Sheet2 using a Python script.
    Log    Running script with file: ${EXCEL_FILE}
    ${result}=    Run Process    python    ${PYTHON_SCRIPT}    ${EXCEL_FILE}
    Log    Script output: ${result.stdout}
    Log    Script errors: ${result.stderr}
    Should Not Contain    ${result.stdout}    Traceback    Script execution should not error
    Should Not Contain    ${result.stderr}    Traceback    There should be no errors in stderr
