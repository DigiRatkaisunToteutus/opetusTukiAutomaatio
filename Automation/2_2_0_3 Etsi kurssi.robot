*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}           https://moodle.eoppimispalvelut.fi
${SEARCH_TERM}   Digitaalisen ratkaisun toteutus - T42T165OJ-3003
${OUTPUT_DIR}    ./results

*** Test Cases ***
Etsi Kurssi
    Open Browser    ${URL}    Firefox
    Maximize Browser Window

    # Odota, että sivu latautuu ja kaappaa ruutukuva
    Sleep    10s
    Capture Page Screenshot    ${OUTPUT_DIR}/screenshot_1.png

    # Varmista, että odotettu teksti (tai kurssin nimi) tulee näkyviin
    Wait Until Page Contains    Digitaalisen ratkaisun toteutus - T42T165OJ-3003    timeout=60s
    Capture Page Screenshot    ${OUTPUT_DIR}/screenshot_2.png

    # Lopeta testi
    Log    Kurssi löytyi
    Close Browser
