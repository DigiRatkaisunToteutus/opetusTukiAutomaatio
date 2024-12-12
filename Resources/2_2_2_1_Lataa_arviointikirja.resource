Documentation       Testataan dokumentaatiota
'''                 testi 

*** Settings ***

Library    SeleniumLibrary
Library    OperatingSystem
Library    Collections

*** Variables ***
${PAGE_1_URL}    file:///${CURDIR}/../static_pages/2_2_2_A_Quiz-Tehtävät/2_2_2_1_a_Kurssi_ Testaus Flip 2 _ Lapinkampus Moodle.htm
${PAGE_2_URL}    file:///${CURDIR}/../static_pages/2_2_2_A_Quiz-Tehtävät/2_2_2_1_b_Arvioijan raportti _ Testaus Flip 2 _ Lapinkampus Moodle.htm
${PAGE_3_URL}    file:///${CURDIR}/../static_pages/2_2_2_A_Quiz-Tehtävät/2_2_2_1_c_Vie muotoon OpenDocument-taulukko _ Testaus Flip 2 _ Lapinkampus Moodle.htm
${BROWSER}    Chrome
${SOURCE_FILE}   ${CURDIR}/../Testdata/kokoArviointikirja.xlsx
${DESTINATION_FOLDER}    ${CURDIR}/../Lataukset


*** Keywords ***
2_2_2_1 Lataa arviointikirja
    Open Browser    ${PAGE_1_URL}    ${BROWSER}    options=add_argument("--allow-file-access-from-files")

    # Suljetaan pop up -ikkuna, joka jostain syystä ilmestyy ruutuun
    Wait Until Element Is Enabled    xpath=//button[starts-with(@id, 'yui_3_17_2_1_') and contains(@class, 'yui3-button closebutton') and @title='Sulje']    timeout=20s
    
    # Pitää lisätä JavaScript, koska pop up on dynaaminen ja xpath ei käy identifioimaan Sulje-painiketta
    Execute JavaScript    document.querySelector('.yui3-widget-mask').style.display = 'none';    # Yritetty poistaa päällekkäiset elementit
    Execute JavaScript    document.querySelector('button[title="Sulje"]:first-of-type').click();    # Tämän pitäisi klikata sitä painiketta, joka sattuu olemaan päällimmäisenä

    # Odota, että "Arvioinnit" on näkyvissä ja interaktiivinen
    Wait Until Element Is Enabled    xpath=//a[@role='menuitem' and @class='nav-link' and text()='Arvioinnit']    timeout=15s
    
    # Klikkaa "Arvioinnit"-linkkiä
    Click Element    xpath=//a[@role='menuitem' and @class='nav-link' and text()='Arvioinnit']

    # Siirry toiselle sivulle
    Go To    ${PAGE_2_URL}
    Maximize Browser Window

    # Odota, että alasvetovalikko on näkyvissä ja elementti on klikkattavissa
    Wait Until Element Is Visible    xpath=//li[@id='select-menu-option674f1e4aec51723']    timeout=10s

    # Klikkaa "Vie"-elementti, joka löytyy ID:n perusteella
    Click Element    xpath=//li[@id='select-menu-option674f1e4aec51723']

    # Siirry uudelle sivulle
    Go To    ${PAGE_3_URL}
    Maximize Browser Window

    # Odota, että alasvetovalikko on näkyvissä ja elementti on klikkattavissa
    Wait Until Element Is Visible    xpath=//li[@id='select-menu-option674f1e6656bb127']    timeout=10s

    # Klikkaa "Excel-taulukko"-elementti, joka löytyy ID:n perusteella
    Click Element    xpath=//li[@id='select-menu-option674f1e6656bb127']

    # Odota, että painike on näkyvissä ja interaktiivinen
    Wait Until Element Is Visible    id=id_submitbutton    timeout=15s

    # Klikkaa Lataa-painiketta
    Click Element    id=id_submitbutton

    # Hae Excel-tiedosto oikeasta sijainnista (koska painikkeesta ei oikeasti tapahdu mitään) ja kopioi se uuteen sijaintiin
    Copy File    ${SOURCE_FILE}    ${DESTINATION_FOLDER}