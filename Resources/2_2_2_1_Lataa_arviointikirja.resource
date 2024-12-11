Documentation       Testataan dokumentaatiota
'''                 testi 

*** Settings ***

Library    SeleniumLibrary
Library    OperatingSystem
Library    Collections

*** Variables ***
${PAGE_1_URL}    file:///C:/Users/heidi/AppData/Local/Temp/4df1f160-9a64-4ef4-823b-b442d8356d26_static_pages.zip.static_pages.zip/static_pages/2_2_2_A_Quiz-Teht%C3%A4v%C3%A4t/2_2_2_1_a_Kurssi_%20Testaus%20Flip%202%20_%20Lapinkampus%20Moodle.htm
${PAGE_2_URL}    file:///C:/Users/heidi/AppData/Local/Temp/8c985fe7-ffd6-4298-a30f-597e965a1484_static_pages.zip.static_pages.zip/static_pages/2_2_2_A_Quiz-Teht%C3%A4v%C3%A4t/2_2_2_1_b_Arvioijan%20raportti%20_%20Testaus%20Flip%202%20_%20Lapinkampus%20Moodle.htm
${PAGE_3_URL}    file:///C:/Users/heidi/AppData/Local/Temp/efdc479a-c759-4d9f-bc50-75c52b800665_static_pages.zip.static_pages.zip/static_pages/2_2_2_A_Quiz-Teht%C3%A4v%C3%A4t/2_2_2_1_c_Vie%20muotoon%20OpenDocument-taulukko%20_%20Testaus%20Flip%202%20_%20Lapinkampus%20Moodle.htm
${BROWSER}    Chrome
${SOURCE_FILE}   C:\\Users\\heidi\\OneDrive\\Työpöytä\\koulu\\Digitaalisen ratkaisun toteutus\\opetusTukiAutomaatio\\Testdata\\kokoArviointikirja.xlsx
${DESTINATION_FOLDER}    C:\\Users\\heidi\\OneDrive\\Työpöytä\\koulu\\Digitaalisen ratkaisun toteutus\\opetusTukiAutomaatio\\Lataukset


*** Keywords ***
2_2_2_1 Lataa arviointikirja
    Open Browser    ${PAGE_1_URL}    ${BROWSER}    options=add_argument("--allow-file-access-from-files")
    Maximize Browser Window

    # Odota, että "Arvioinnit" on näkyvissä ja interaktiivinen
    Wait Until Element Is Visible    xpath=//a[normalize-space(text())='Arvioinnit']    timeout=15s

    # Klikkaa "Arvioinnit"-linkkiä
    Click Element    xpath=//a[normalize-space(text())='Arvioinnit']

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