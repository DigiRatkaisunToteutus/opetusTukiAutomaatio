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

# webdrivermanager firefox chrome --linkpath C:\Users\pekka.reijonen\AppData\Local\Programs\Python\Python310\
# Current browser version is 131.0.6778.86 with binary path C:\Program Files\Google\Chrome\Application\chrome.exe
