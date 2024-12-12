*** Keywords ***
Open Moodle And Search Course
    [Arguments]    ${url}    ${search_term}
    Open Browser    ${url}    Firefox
    Maximize Browser Window
    Wait Until Element Is Visible    xpath=//input[@placeholder='Hae']    timeout=30s
    Input Text    xpath=//input[@placeholder='Hae']    ${search_term}
    Press Key     xpath=//input[@placeholder='Hae']    RETURN
    Wait Until Page Contains    ${search_term}    timeout=30s
    Close Browser
