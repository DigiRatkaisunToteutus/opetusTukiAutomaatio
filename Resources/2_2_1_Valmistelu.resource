Documentation       Testataan dokumentaatiota
'''                 testi 

*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}     https://moodle.eoppimispalvelut.fi/

*** Keywords ***
Kirjaudu moodleen
    log  done.
#    Open Browser    ${URL}    chrome
#    Title Should Be    Kirjaudu sivustoon | Lapinkampus Moodle

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