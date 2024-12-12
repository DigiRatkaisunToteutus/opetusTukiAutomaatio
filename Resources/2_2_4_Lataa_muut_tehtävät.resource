*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}     https://moodle.eoppimispalvelut.fi//
${LINK_TITLE}         //a[contains(text(),'Edistynyt arviointi')]
${BUTTON_SELECTOR}     xpath=//a[text()='Näytä kaikki palautukset']
${FINAL_WINDOW_BUTTON_SELECTOR}   css=a.btn.btn-secondary[href*='view.php?id=23022']  #painetaan tätä koska lataa kaikki-nappia ei ole
*** Keywords ***
...    
Avaa kurssin sivu
    Open Browser    file:///${CURDIR}/../static_pages/2_2_4_Lataa_muut/2_2_4_1_A_Kurssi_%20Testaus%20Flip%202%20_%20Lapinkampus%20Moodle.htm   chrome

Paina enter
...    Press Key         //body    \\13

Avaa ajankäyttösuunnitelmat
     #Wait Until Element Is Visible   xpath=//a[@href='https://testimoodle.eoppimispalvelut.fi/mod/assign/view.php?id=22406']
     # Wait Until Element Is Visible    xpath=//a[@href='https://testimoodle.eoppimispalvelut.fi/mod/assign/view.php?id=22406']   timeout=10
    # Wait Until Element Is Clickable    xpath=//a[@href='https://testimoodle.eoppimispalvelut.fi/mod/assign/view.php?id=22406']    timeout=10
     Click Element     xpath=//a[@href='https://testimoodle.eoppimispalvelut.fi/mod/assign/view.php?id=22406']

    # Execute Javascript    arguments[0].scrollIntoView(true);    xpath=//a[@href='https://testimoodle.eoppimispalvelut.fi/mod/assign/view.php?id=22406']
     Open Browser    file:///${CURDIR}/../static_pages/2_2_4_Lataa_muut/2_2_4_1_B_Testaus%20Flip%202_%20Opiskelu_ajank%C3%A4ytt%C3%B6suunnitelman%20palautus%20_%20Lapinkampus%20Moodle.htm   chrome

Katso ja arvioi palautuksia
     Click Element    Click Element xpath=//a[@href='https://testimoodle.eoppimispalvelut.fi/mod/assign/view.php?id=22406&amp;action=grading']
     Open Browser    file:///${CURDIR}/../static_pages/2_2_4_Lataa_muut/2_2_4_1_C_Testaus%20Flip%202_%20Opiskelu_ajank%C3%A4ytt%C3%B6suunnitelman%20palautus%20-%20Arviointi%20_%20Lapinkampus%20Moodle.htm   chrome

Lataa kaikki palautukset
     Click Element    Click Element xpath=//a[@class='btn btn-secondary' and @href='https://testimoodle.eoppimispalvelut.fi/mod/assign/view.php?id=22406&amp;action=downloadall']
     Close Browser

Avaa kurssin sivu 2
     Open Browser    file:///${CURDIR}/../static_pages/2_2_4_Lataa_muut/2_2_4_2_B_Kurssi_%20Testaus%20Flip%202%20_%20Lapinkampus%20Moodle.htm    chrome


Avaa tehtävät
     Click Element    xpath=//a[@href='https://testimoodle.eoppimispalvelut.fi/mod/assign/index.php?id=7']
     Close Browser
     Open Browser     file:///${CURDIR}/../static_pages/2_2_4_Lataa_muut/2_2_4_2_C_Teht%C3%A4v%C3%A4t%20_%20Lapinkampus%20Moodle.htm    chrome

    


Lataa tehtävät  # silmukka avaa linkin, painaa määrättyä nappia avatulla ikkunalla ja painaa jälleen määrättyä nappia uudella ikkunalla
    
    Maximize Browser Window
    
    ${links}=    Get WebElements    xpath=//a[@title="${LINK_TITLE}"]
    ${main_window}=    Get Window Handles    # tämän toiminta epäselvää, jos ei toimi niin en ymmärrä syytä

    FOR    ${link}    IN    @{links}
        Execute Javascript    arguments[0].click();    ${link}
        
        ${all_windows}=    Get Window Handles
        Switch Window    ${all_windows[-1]}
        
        Wait Until Page Contains Element    ${BUTTON_SELECTOR}    timeout=10
        Click Element    ${BUTTON_SELECTOR}
        
        ${updated_windows}=    Get Window Handles
        Switch Window    ${updated_windows[-1]}
        
        Wait Until Page Contains Element    ${FINAL_WINDOW_BUTTON_SELECTOR}    timeout=10
        Click Element    ${FINAL_WINDOW_BUTTON_SELECTOR}
        Close Window
        
        Switch Window    ${main_window}
    END                                  # 



    

    Close Browser


   
 

     
