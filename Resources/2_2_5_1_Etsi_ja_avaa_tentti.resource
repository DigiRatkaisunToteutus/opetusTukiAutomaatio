*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}     https://moodle.eoppimispalvelut.fi//

*** Keywords ***
Avaa selain
     Open Browser       file:///${CURDIR}/../static_pages/2_2_5_Lataa_tentti/2_2_5_1_A_Kurssi_%20Testaus%20Flip%202%20_%20Lapinkampus%20Moodle.htm    chrome
     ##paina enter
     ## [Arguments] ${tab_count} :FOR ${index} IN RANGE ${tab_count} \ Log Pressing Tabulator key - iteration ${index}

Paina enter
     Press Key    //body    \\13

Etsi tentti
    ## Wait Until Element Is Visible    xpath://div[@id="coursecontentsection10"]
    ## Scroll Element Into View         xpath=//a[text()='Tentti']
    Wait Until Page Contains Element    xpath=//a[@href='https://testimoodle.eoppimispalvelut.fi/mod/quiz/view.php?id=23509']    timeout=10

Avaa tentti
    ## Wait Until Element Is Clickable    xpath=//a[@href='https://testimoodle.eoppimispalvelut.fi/mod/quiz/view.php?id=23509']    timeout=10
    ## Click Element       xpath=//a[@href='https://testimoodle.eoppimispalvelut.fi/mod/quiz/view.php?id=23509']
    ## Close Browser
    Open Browser         file:///${CURDIR}/../static_pages/2_2_5_Lataa_tentti/2_2_5_1_B_Testaus%20Flip%202_%20Lopputentti%2030%20_%20arvosanasta%20_%20Lapinkampus%20Moodle.htm     chrome

Sulje selain
     Close Browser

##Paina tab
    ## [Arguments] ${tab_count} :FOR ${index} IN RANGE ${tab_count} \ Log Pressing Tabulator key - iteration ${index}


