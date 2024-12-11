*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${RELATIVE PATH}    ../static_pages/2_2_2_A_Quiz-Tehtävät/2_2_2_1_b_Arvioijan raportti _ Testaus Flip 2 _ Lapinkampus Moodle.htm

*** Test Cases ***
Open Local File Using Relative Path
    # Convert the relative path to an absolute path
    ${ABSOLUTE PATH}=    Evaluate    os.path.abspath(os.path.join('${CURDIR}', '${RELATIVE PATH}'))    modules=os
    ${FILE URL}=         Create File URL    ${ABSOLUTE PATH}

    # Open the file URL in the browser
    Open Browser    ${FILE URL}    Chrome
    Maximize Browser Window

*** Keywords ***
Create File URL
    [Arguments]    ${file_path}
    ${url}=    Set Variable    file://${file_path}
    [Return]    ${url}
