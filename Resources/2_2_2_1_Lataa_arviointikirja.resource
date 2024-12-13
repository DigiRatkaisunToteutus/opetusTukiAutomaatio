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
    Maximize Browser Window

    Sleep    5s

    Execute JavaScript    document.querySelector('.yui3-widget-mask').style.display = 'none';    # Yritetty poistaa päällekkäiset elementit

    # Odota, että "Arvioinnit" on näkyvissä ja interaktiivinen
    Wait Until Element Is Enabled    xpath=//a[@role='menuitem' and contains(@class, 'nav-link') and normalize-space(text())='Arvioinnit']    timeout=15s
    
    # Klikkaa "Arvioinnit"-linkkiä
    Click Element    xpath=//a[@role='menuitem' and contains(@class, 'nav-link') and normalize-space(text())='Arvioinnit']

    # Siirry toiselle sivulle
    Go To    ${PAGE_2_URL}
    Maximize Browser Window

    # Odota, että alasvetovalikko on näkyvissä ja elementti on klikkattavissa
    Wait Until Element Is Visible    xpath=//div[contains(@class, 'btn dropdown-toggle') and normalize-space(text())='Arvioijan raportti']    timeout=10s

    Click Element    xpath=//div[contains(@class, 'btn dropdown-toggle') and normalize-space(text())='Arvioijan raportti']

    # Klikkaa "Vie"-elementti
    Click Element    xpath=//li[@id='select-menu-option674f1e4aec51723']

    # Siirry uudelle sivulle
    Go To    ${PAGE_3_URL}
    Maximize Browser Window

    # Skrollataan Lataa-painike näkyviin
    Scroll Element Into View    xpath=//input[@type='submit' and @value='Lataa']

    # Odotetaan, että joku ruutuun ilmestyvä teksti katoaa
    Wait Until Element Is Not Visible    xpath=//div[@id='MathJax_Message']    timeout=10s

    # Klikkaa Lataa-painiketta
    Click Element    xpath=//input[@type='submit' and @value='Lataa']

    # Hae Excel-tiedosto oikeasta sijainnista (koska painikkeesta ei oikeasti tapahdu mitään) ja kopioi se uuteen sijaintiin
    Copy File    ${SOURCE_FILE}    ${DESTINATION_FOLDER}