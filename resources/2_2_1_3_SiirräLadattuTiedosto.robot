Documentation       Testataan dokumentaatiota
'''                 testi

*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}     http://localhost:8000
${FILE}    ../data/your_file_to_process.txt

*** Test Cases ***
Process Uploaded File
    Open Browser    ${URL}    edge
    #Upload File     ${FILE} 
    Close Browser

*** Keywords ***
#Upload File
 #   [Arguments]    ${file_path}
