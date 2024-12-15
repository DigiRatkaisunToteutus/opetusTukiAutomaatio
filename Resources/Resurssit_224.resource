*** Settings ***
Library             SeleniumLibrary
Library             OperatingSystem

*** Keywords ***
Valmistele_sivu
    Open Browser    ${BASE_URL}    edge
    Maximize Browser Window
    Wait Until Page Contains    Lapin AMK, Lapin yliopisto, REDU    timeout=10s



Paina enter
    Press Keys    NONE    ENTER

Kirjoita
    [Arguments]    ${TEXT}    ${ELEMENT}
    Input Text    ${TEXT}    ${ELEMENT}

Siirrä tiedostot
    [Arguments]    ${SOURCE_DIR}    ${DEST_DIR}
    Move Files    ${SOURCE_DIR}/*    ${DEST_DIR}
