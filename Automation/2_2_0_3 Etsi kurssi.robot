*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://moodle.eoppimispalvelut.fi
${SEARCH_TERM}    Kurssin nimi

*** Test Cases ***
Etsi Kurssi
    Open Browser    ${URL}    browser=Firefox
    Wait Until Element Is Visible    id=search-input    timeout=10s
    Input Text    id=search-input    ${SEARCH_TERM}
    Click Button    id=search-button
    Page Should Contain    ${SEARCH_TERM}
    Close Browser