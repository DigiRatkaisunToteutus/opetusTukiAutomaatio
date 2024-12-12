Documentation       Testataan dokumentaatiota
'''                 testi 

*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/2_2_0_4_Klikkaa_kurssin_nimeä.resource

*** Variables ***
${URL}    https://moodle.eoppimispalvelut.fi/
${COURSE_NAME}    //a[contains(text(), 'Testaus Flip 2')]

*** Keywords ***
2_2_0_4 Klikkaa kurssin nimeä
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Sleep    5s
    Log    Trying to find the course name element
    Wait Until Element Is Visible    ${COURSE_NAME}    timeout=20s
    Click Element    ${COURSE_NAME}
    Log    Course clicked successfully
    Close Browser

*** Tasks ***
2_2_0 Mene kurssisivulle
#    2_2_0_1 Kirjaudu moodleen
#    2_2_0_2 Näytä kaikki kurssit
#    2_2_0_3 Etsi kurssi 
    2_2_0_4 Klikkaa kurssin nimeä
    
