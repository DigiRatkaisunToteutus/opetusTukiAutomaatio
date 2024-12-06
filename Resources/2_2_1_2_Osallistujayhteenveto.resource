

*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Keywords ***
2_2_1_2 Haekurssin osallistujat yhteenveto
Open Site
    Open browser  D://Projektit/Ryhmatyo/opetusTukiAutomaatio/Resources/2_2_1_2_A_Moodle.htm
Choose Groups Summary
    Click Element     name=jump
    Click Element     //*[contains(text(),'Yhteenveto')]
Download JSON File
    Sleep   5
    #Sleep 5 sekunttia, jotta virheilmoitus ehtii mennä ohi
    Click Element     id=downloadtype_dataformat
    Click Element     //*[contains(text(),'Javascript Object Notation')]
    #Click Button     //*[contains(text(),'Lataa')]

2_2_0_2 Näytä kaikki kurssit
    Log    Done.
#    klikkaa näytä alasvetovalikko
#    valitse 1. vaihtoehto, kaikki 

2_2_0_3 Etsi kurssi
    Log    Done. 
#    Kirjoita hae-kenttään     kurssin nimi
#    etsi sivulta     kurssin nimi

 2_2_0_4 Klikkaa kurssin nimeä
    Log    Done.
#    klikkaa     löydetty weppikomponentti

    [Teardown]    Close Browser

