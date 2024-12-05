Documentation       Testataan dokumentaatiota
'''                 testi 

*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}       https://moodle.eoppimispalvelut.fi/

*** Keywords ***
Kirjaudu moodleen
    Open Browser    ${URL}    chrome
    Title Should Be    Kirjaudu sivustoon | Lapinkampus Moodle
    
    [Teardown]    Close Browser
