*** Settings ***
Library             SeleniumLibrary
Library             OperatingSystem

*** Variables ***
${URL}    https://moodle.eoppimispalvelut.fi/
${DOWNLOAD_DIR}     /path/to/download/folder
${DATA_DIR}         /path/to/data/folder
${SEARCH_INPUT_XPATH}     //input[@placeholder='Hae']
${SEARCH_LINK_XPATH}    //span[@title='Digitaalisen ratkaisun toteutus - T42T165OJ-3003']
${SEARCH_LINK_XPATH}  //a[contains(text(), 'Opiskelu/ajankäyttösuunnitelman palautus')]

*** Keywords ***
2_2_4_1 Lataa ajankäyttösuunnitelmat
    Mene sivulle
    etsi kurssi
    valitse kurssi
    Klikkaa "opiskelu/ajankäyttösuunnitelman palautus"
    Klikkaa "Katso/arvioi kaikkia palautuksia"
    Klikkaa "Lataa kaikki palautukset"
    Siirrä tiedostot    ${DOWNLOAD_DIR}    ${DATA_DIR}

Mene sivulle
    Open Browser    ${URL}    edge
    Maximize Browser Window
    Wait Until Page Contains    Lapin AMK, Lapin yliopisto, REDU    timeout=10s

etsi kurssi
    ${search_box} =    Get Web Element    ${SEARCH_INPUT_XPATH}
    Input Text    ${search_box}    Digitaalisen ratkaisun toteutus - T42T165OJ-3003
    Sleep    3s
    Press Keys    ${search_box}    ENTER
    Sleep    1s

valitse kurssi
    Click Element    xpath=${SEARCH_LINK_XPATH}

Klikkaa "opiskelu/ajankäyttösuunnitelman palautus"
    Scroll Element Into View    ${SEARCH_LINK_XPATH}
    Click Element    xpath=${SEARCH_LINK_XPATH}

Klikkaa "Katso/arvioi kaikkia palautuksia"
    Click Element    xpath=//a[text()='Katso/arvioi kaikkia palautuksia']

Klikkaa "Lataa kaikki palautukset"
    Click Element    xpath=//button[text()='Lataa kaikki palautukset']
