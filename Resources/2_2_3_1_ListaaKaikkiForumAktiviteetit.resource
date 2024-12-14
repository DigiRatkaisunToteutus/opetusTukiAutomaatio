Documentation       Testataan dokumentaatiota
'''                 testi 

*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn
Library    Collections

*** Variables ***
${RELATIVE PATH1}        ../static_pages/2_2_3 Keskusteluryhm/2_2_3_1_A_Kurssi_ Testaus Flip 2 _ Lapinkampus Moodle.htm
${RELATIVE PATH2}        ../static_pages/2_2_3 Keskusteluryhm/2_2_3_1_B_Testaus Flip 2_ Keskustelualueet _ Lapinkampus Moodle.htm
${Tarkistusstring}        Yksilötehtävien
@{Yksilotehtavalista}

*** Keywords ***
Create File URL
    [Arguments]          ${file_path}
    ${url}=              Set Variable    file://${file_path}
    RETURN               ${url}

Set Href
    [Arguments]    ${element}
    ${href}=    Get Element Attribute    ${element}    href  #Asetetaan href muuttujaa elementin href sisältö.

#2_2_3_1 lohkot
Open Site
    ${ABSOLUTE PATH}=    Evaluate    os.path.abspath(os.path.join('${CURDIR}', '${RELATIVE PATH1}'))    modules=os
    ${FILE URL}=         Create File URL    ${ABSOLUTE PATH} # Tämän rivin Create File URL kohta käynnistää alla olevan "Create File URL" -lohkon.
    Open Browser         ${FILE URL}

Sulje Virhe
   Sleep         1  #Odotetaan, että sivu on varmasti auki ja virheilmoitus popupit avoinna
   Press Keys    None    ENTER
   Press Keys    None    ENTER
   Press Keys    None    ENTER  #Klikataan Enterillä 3 virheilmoitusta pois
   Sleep         1

Avaa Keskustelualueet
   Sleep         1
#  Click Element    //*[contains(text(),'Keskustelualueet')]
#  Elementtiä ei klikata, koska synnyttää virheilmoituksen: Message: Element <a href="https://testimoodle.eoppimispalvelut.fi/mod/forum/index.php?id=7"> could not be scrolled into view
#  Automaatio siirtyy seuraavalle sivulle: Yleiset keskutelualueet.
   [Teardown]    Close Browser

Open Site Yleiset keskustelualueet
   ${ABSOLUTE PATH}=    Evaluate    os.path.abspath(os.path.join('${CURDIR}', '${RELATIVE PATH2}'))    modules=os
   ${FILE URL}=         Create File URL    ${ABSOLUTE PATH}        # Tämän rivin Create File URL kohta käynnistää alla olevan "Create File URL" -lohkon.
   Open Browser         ${FILE URL}

Hae lista keskusteluiden linkeistä
    ${elements}=    Get WebElements    xpath://a[contains(text(), 'Yksilötehtävien')]    
    #Muodostetaan lista kaikista <a> alueista, jotka sisältävät sanan "Yksilötehtävien"
    FOR    ${element}    IN    @{elements}                         #Käydään yllä luotu lista läpi
        ${text}=    Get Text    ${element}                         #Otetaan ylös elementin teksti
        Run Keyword If    '${text}' == ''     Continue For Loop    #Mikäli elementin teksti on tyhjä, siirrytään seuraavaan loopiin.
        Should Contain  ${text}    ${Tarkistusstring}              #Jos teksti sisältää Tarkistusstring muutujan sisällön (Yksilötehtävien).
        ${href}=    Get Element Attribute    ${element}    href    #Haetaan elementin href sisältö
        Append To List  ${Yksilotehtavalista}  ${href}             #Lisätään href sisältö
    END
  Log    ${Yksilotehtavalista}
  [Teardown]    Close Browser