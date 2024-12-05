Documentation       Testataan dokumentaatiota
'''                 testi 

*** Settings ***
Library    SeleniumLibrary

*** Variables ***
# ${URL}    https://google.com
${URL}    file:///C:/Users/veper/Documents/gitrepot/testi/opetusTukiAutomaatio/Examples/googleSivu/Google_testi.htm

*** Test Cases ***
Google ChromeDriver kokeilu
    Open Browser    ${URL}    chrome    options=add_argument("--allow-file-access-from-files")
    Title Should Be    Google
    [Teardown]    Close Browser

