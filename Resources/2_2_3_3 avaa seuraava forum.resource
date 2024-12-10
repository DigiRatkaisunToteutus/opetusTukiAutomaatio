*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem

*** Variables ***

${RELATIVE PATH}        ../Static_pages/2_2_3 Keskusteluryhm/2_2_3_3 _A_3. Yksilötehtävien kommentointi_keskustelu- foorumi _ Lapinkampus Moodle.htm



*** Keywords ***

Avaa sivu
    ${ABSOLUTE PATH}=    Evaluate    os.path.abspath(os.path.join(r'${CURDIR}', r'${RELATIVE PATH}'))    modules=os
    ${FILE URL}=         Create File URL    ${ABSOLUTE PATH}
    Open Browser    ${FILE URL}

Create File URL
    [Arguments]    ${file_path}
    ${url}=    Set Variable    file://${file_path}
    RETURN    ${url}

Download JSON File
    Sleep                5
    Click Element        id=downloadtype_dataformat
    Click Element        //*[contains(text(),'Javascript Object Notation')]

