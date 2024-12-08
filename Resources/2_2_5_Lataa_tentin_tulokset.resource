*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${URL}    https://moodle.eoppimispalvelut.fi
##${TAB_COUNT} 5

*** Keywords ***
2_2_5_1 Etsi ja avaa tentti TENTINNIMI
     Log      Done.
Avaa selain
     Open Browser   file:///C:/Users/caisa/gitrepot/opetusTukiAutomaatio/static_pages/2_2_5_Lataa_tentti/2_2_5_1_A_Kurssi_%20Testaus%20Flip%202%20_%20Lapinkampus%20Moodle.htm   chrome
Etsi tentti
    ## Wait Until Element Is Visible    xpath://div[@id="coursecontentsection10"]
    ## Scroll Element Into View    xpath=//a[text()='Tentti']
    Wait Until Element Is Visible  xpath=//a[@role='button' and @href='#coursecontentcollapse10']   30s
    Click Element    	 xpath=//a[@role='button' and @href='#coursecontentcollapse10']
Avaa tentti
     ##Click Element    xpath=//a[text()='Tentti']
    ## Click Element    xpath=//a[text()='Lopputentti']
    ##Click Link    link:Tentti
    Click Element   xpath=//a[@href='https://testimoodle.eoppimispalvelut.fi/mod/quiz/view.php?id=23509']
Sulje selain
     Close Browser
Paina enter
     Press Key    //body    \\13
##Paina tab
    ## [Arguments] ${tab_count} :FOR ${index} IN RANGE ${tab_count} \ Log Pressing Tabulator key - iteration ${index}

##Scroll Page Until Element Is Visible
##...   ## [Arguments] ${element_locator} :FOR ${index} IN RANGE 10 \ Log Attempting scroll iteration ${index} \ Run Keyword And Ignore Error Execute JavaScript window.scrollBy(0, 1000) \ Run Keyword And Ignore Error Wait Until Element Is Visible ${element_locator} 2s \ ${is_visible}= Run Keyword And Return Status Element Should Be Visible ${element_locator} \ Run Keyword If ${is_visible} Log Element is visible, exiting loop \ Run Keyword If ${is_visible} Exit For Loop
2_2_5_2 Lataa tentin tulokset excelinä
     Log   Done.
Avaa selain2
     Open Browser      file:///C:/Users/caisa/gitrepot/opetusTukiAutomaatio/static_pages/2_2_5_Lataa_tentti/2_2_5_1_C_Lopputentti%2030%20_%20arvosanasta%20_%20Lapinkampus%20Moodle.htm  chrome
Kirjaudu Moodleen
     Open Browser  ${URL} chrome 
     Title Should Be    Kirjaudu sivustoon
Paina nappia tulokset
   ##Wait Until Element Is Visible  xpath=//a[@role='button' and @href='#coursecontentcollapse10']   30s
   ##Click Element    id=yui_3_17_2_1_1733675148395_166 Element    xpath=//a[@href='https://testimoodle.eoppimispalvelut.fi/mod/quiz/report.php?id=23509&amp;mode=overview']
    Click Element      xpath=//a[text()='Tulokset']
Tiedot exceliin

     Click Element   xpath=//a[text()='Pilkulla erotetut'

     Click Element   xpath=//a[text()='Microsoft Excel'
   
Näytä raportti
   Click Element   xpath=//a[text()='Näytä raportti'
Lataa
   Click Button    xpath=//a[text()='Lataa'



