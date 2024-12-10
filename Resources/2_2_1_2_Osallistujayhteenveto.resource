Documentation       Testataan dokumentaatiota
'''                 testi 

*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem

*** Variables ***
${RELATIVE PATH}         ../resources/2_2_1_2_TestausFlip2_Osallistujat_LapinkampusMoodle.htm  #Käytössä 2_2_1_2 osiossa

*** Keywords ***
#2_2_1_2 Hae kurssin osallistujayhteenveto

Open Site
    ${ABSOLUTE PATH}=    Evaluate    os.path.abspath(os.path.join('${CURDIR}', '${RELATIVE PATH}'))    modules=os
    ${FILE URL}=         Create File URL    ${ABSOLUTE PATH} # Tämän rivin Create File URL kohta käynnistää alla olevan "Create File URL" -lohkon.
    Open Browser         ${FILE URL}

Create File URL
    [Arguments]          ${file_path}
    ${url}=              Set Variable    file://${file_path}
    RETURN               ${url}

Choose Groups Summary
    Click Element        name=jump
    Click Element        //*[contains(text(),'Yhteenveto')]

Download JSON File
    Sleep                5
    #Sleep 5 sekunttia, jotta virheilmoitus ehtii mennä ohi
    Click Element        id=downloadtype_dataformat
    Click Element        //*[contains(text(),'Javascript Object Notation')]
#   Click Button         //*[contains(text(),'Lataa')]
#   Click Button Lataa on kommenttina, koska muuten ilmoittaa FAIL, koska tiedostoa ei oikeasti ole olemassa.
#   Automaatio lataa koneelle ladatut tiedostot -kansioon tiedoston nimeltä: "T42T302OJ-3003_groups.json"

