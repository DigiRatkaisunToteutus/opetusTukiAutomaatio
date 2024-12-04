*** Settings ***
Library     SeleniumLibrary
Library     Collections


*** Variables ***
${URL}       https://moodle.eoppimispalvelut.fi/
${BROWSER}   chrome


*** Keywords ***
Avaa Kurssisivu
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${options}    add_argument    --ignore-certificate-errors
    Open Browser    ${URL}    ${BROWSER}    options=${options}
    Maximize Browser Window
    Run Keyword And Ignore Error    Wait Until Element Is Visible    xpath=//div[@id='course-list']    30s


Tarkista Kurssilista
    ${courses}=    Get WebElements    xpath=//div[@class='course-item']
    FOR    ${course}    IN    @{courses}
        ${course_name}=    Get Text    ${course}
        Log    ${course_name}
    END
    [Teardown]    Close Browser
