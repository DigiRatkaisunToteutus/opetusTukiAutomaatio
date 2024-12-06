*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${URL}    https://moodle.eoppimispalvelut.fi

*** Keywords ***

2_2_5_2 Lataa tentin tulokset excelinä
     Log    Done.
Kirjaudu Moodleen
     Open Browser  ${URL} chrome 
     Title Should Be    Kirjaudu sivustoon
Paina nappia tulokset
   Click Button    tulokset

Tiedot exceliin
   Click Element    Pilkulla erotetut arvot (.cw)
   Click Element    Microsoft Excel (.xlsx)
   
Näytä raportti
   Click Button    Näytä raportti
Lataa
   Click Button    Lataa
   


