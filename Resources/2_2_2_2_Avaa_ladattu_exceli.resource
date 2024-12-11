Documentation       Testataan dokumentaatiota
'''                 testi 

*** Settings ***

Library    SeleniumLibrary
Library    OperatingSystem
Library    Process

*** Variables ***

${SOURCE_FILE}    C:\\Users\\heidi\\OneDrive\\Työpöytä\\koulu\\Digitaalisen ratkaisun toteutus\\opetusTukiAutomaatio\\Lataukset\\kokoArviointikirja.xlsx
${DESTINATION_FOLDER}    C:\\Users\\heidi\\OneDrive\\Työpöytä\\koulu\\Digitaalisen ratkaisun toteutus\\opetusTukiAutomaatio\\Data
${PYTHON_SCRIPT}    KaikkiQuizzesExeliin.py

*** Keywords ***
2_2_2_2 Avaa ladattu exceli

    # Siirretään Excel-tiedosto "Latauksista" kansioon Data
    Move File    ${SOURCE_FILE}    ${DESTINATION_FOLDER}

    Run Process    python    ${PYTHON_SCRIPT}
