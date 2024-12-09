Documentation       Testataan dokumentaatiota
'''                 testi

*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem

*** Variables ***
${URL}    https://moodle.eoppimispalvelut.fi/

*** Test Cases ***
Process Uploaded File
    Open Browser    ${URL}    edge
    Close Browser

*** Keywords ***
Download JSON File
    Sleep   5
    Click Element     id=downloadtype_dataformat
    Click Element     //*[contains(text(),'Javascript Object Notation')]
