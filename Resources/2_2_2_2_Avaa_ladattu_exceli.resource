Documentation       Testataan dokumentaatiota
'''                 testi 

*** Settings ***

Library    SeleniumLibrary
Library    OperatingSystem
Library    Process

*** Variables ***

${FILE}    ${CURDIR}/../Lataukset/kokoArviointikirja.xlsx
${TARGET_FILE}    ${FOLDER}/kokoArviointikirja.xlsx 
${FOLDER}    ${CURDIR}/../Data
${EXCEL_CMD}   excel

*** Keywords ***
2_2_2_2 Avaa ladattu exceli

    # Tarkistetaan, että tiedosto on olemassa
    File Should Exist    ${FILE}

    # Siirretään Excel-tiedosto "Latauksista" kansioon Data
    Move File    ${FILE}    ${TARGET_FILE}

    File Should Exist    ${TARGET_FILE}

    # Avataan tiedosto Excelissä
    Run Process    ${EXCEL_CMD}    ${TARGET_FILE}
