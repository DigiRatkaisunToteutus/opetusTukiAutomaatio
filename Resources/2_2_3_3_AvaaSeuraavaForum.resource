*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Library    String
*** Variables ***
${Polku1}        ../static_pages/2_2_3 Keskusteluryhm/2_2_3_3 _A_3. Yksilötehtävien kommentointi_keskustelu- foorumi _ Lapinkampus Moodle.htm
${Polku2}        ../static_pages/2_2_3 Keskusteluryhm/2_2_3_3 _B_Vie _ Lapinkampus Moodle.htm

*** Keywords ***
#Seureaava forum testi
Avaa sivu 1
    ${PaikallinenPolku}=    Evaluate  os.path.abspath(os.path.join(r'${CURDIR}', r'${Polku1}'))  modules=os
    ${TiedostoPolku}=   Parsetaan tiedosto polku  ${PaikallinenPolku}
    Open Browser  ${TiedostoPolku}  browser=chrome
    Wait Until Element Is Visible  css:.yui3-button.closebutton  timeout=5s
    @{buttons}=  Get WebElements  xpath=//button[starts-with(@id, 'yui_3_17_2_1_') and contains(@class, 'closebutton') and contains(@title, 'Sulje')]
    FOR  ${button}  IN  @{buttons[::-1]}
    Click Element  ${button}
    END
Paina seuraava foorumi
    Wait Until Element Is Visible  xpath=//*[@id="next-activity-link"]  timeout=5s
    Click Link    xpath=//*[@id="next-activity-link"]

#Valinnat pois ja takas testi
Avaa sivu 2
    ${PaikallinenPolku}=    Evaluate  os.path.abspath(os.path.join(r'${CURDIR}', r'${Polku2}'))  modules=os
    ${TiedostoPolku}=   Parsetaan tiedosto polku  ${PaikallinenPolku}
    Open Browser  ${TiedostoPolku}  browser=chrome
    Wait Until Element Is Visible  css:.yui3-button.closebutton  timeout=5s
    @{buttons}=  Get WebElements  xpath=//button[starts-with(@id, 'yui_3_17_2_1_') and contains(@class, 'closebutton') and contains(@title, 'Sulje')]
    FOR  ${button}  IN  @{buttons[::-1]}  
    Log To Console  ${button}
    Click Element  ${button}
    END

Klikataan valinnat pois
    [Arguments]  ${1FullXpath}  ${2FullXpath}
    #Klikataan viestit lähtien pois
    Unselect Checkbox  xpath=${1FullXpath} 
    #Klikataan viestit viimeistään pois
    Unselect Checkbox  xpath=${2FullXpath}

Klikataan valintoja takaisin
    [Arguments]  ${1FullXpath}  ${2FullXpath}
    #Valitaan poista html koodi täppä
    Select Checkbox  xpath=${1FullXpath}
    #Valitaan helposti luettavat päivänmäärät täppä
    Select Checkbox  xpath=${2FullXpath}
Valitaan json listasta
    Select From List By Value  xpath=//*[@id="id_format"]  json



#Yleisiä avaimia
Parsetaan tiedosto polku
    [Arguments]  ${absolute_path}
    ${URL POLKU} =  Replace String  ${absolute_path}  \\   /
    ${URL POLKU} =  Set Variable  file:///${URL POLKU}
    [RETURN]  ${URL POLKU}