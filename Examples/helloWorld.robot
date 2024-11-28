Documentation       Testataan dokumentaatiota
'''                 testi 

*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://google.com

*** Test Cases ***
Google ChromeDriver kokeilu
    Open Browser    ${URL}    chrome
    Title Should Be    Google
    [Teardown]    Close Browser

