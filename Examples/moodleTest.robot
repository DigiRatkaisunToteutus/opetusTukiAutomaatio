*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}         https://www.google.com
${BROWSER}     chrome
${SEARCH_TERM}     Robot Framework
${RESULT_TEXT}     Robot Framework


*** Test Cases ***
Search in Google
    [Documentation]    Test case to search in Google and verify the result
    Open Browser       ${URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible    id:W0wltc    5s
    Click Element     id:W0wltc
    Wait Until Element Is Visible    name:q    5s
    Input Text         name:q       ${SEARCH_TERM}
    Press Keys         name:q       RETURN
    Wait Until Page Contains    ${RESULT_TEXT}    10s
    [Teardown]    Close Browser