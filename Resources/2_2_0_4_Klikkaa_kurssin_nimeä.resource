Documentation       Testataan dokumentaatiota
'''                 testi 

*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://moodle.eoppimispalvelut.fi/
${COURSE_NAME}    //a[contains(text(), 'Testaus Flip 2')]

*** Keywords ***
2_2_0_4 Klikkaa kurssin nimeä
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Wait Until Element Is Visible    ${COURSE_NAME}
    Click Element    ${COURSE_NAME}
    Log    Course clicked successfully
    Close Browser
