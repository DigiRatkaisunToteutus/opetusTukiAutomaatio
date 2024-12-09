*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}           https://moodle.eoppimispalvelut.fi

${SEARCH_TERM}   Digitaalisen ratkaisun toteutus - T42T165OJ-3003

*** Test Cases ***
Etsi Kurssi
    Open Browser    ${URL}    Firefox
    Wait Until Page Contains    Kirjaudu sisään    timeout=30s
    Capture Page Screenshot
  
    Click Button    id=loginbtn
    Wait Until Page Contains    Hae kurssi    timeout=30s
    Capture Page Screenshot
    Wait Until Element Is Visible    xpath=//input[@placeholder='Hae']    timeout=60s
    Capture Page Screenshot
    Click Element    xpath=//input[@placeholder='Hae']
    Input Text    xpath=//input[@placeholder='Hae']    ${SEARCH_TERM}
    Press Key     xpath=//input[@placeholder='Hae']    RETURN
    Wait Until Page Contains    ${SEARCH_TERM}    timeout=30s
    Capture Page Screenshot
    Log Source
    Close Browser

