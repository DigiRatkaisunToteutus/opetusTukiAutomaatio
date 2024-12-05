
*** Settings ***
Library     OperatingSystem
Library     SeleniumLibrary
Resource    ../Resources/2_2_1_2_Osallistujayhteenveto.resource
*** Variables ***

*** Test Cases ***
#    2_2_1_1 Kirjaudu moodleen
#    2_2_1_2 Hae kurssin osallistujayhteenveto    (RYHMÄ 10 SAMI TEKEE)
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
#   Click Button     //*[contains(text(),'Lataa')]
#   Click Button Lataa on kommenttina, koska muuten ilmoittaa FAIL, koska tiedostoa ei oikeasti ole olemassa.
#   Automaatio lataa koneelle ladatut tiedostot -kansioon tiedoston nimeltä: "T42T302OJ-3003_groups.json"

#   2_2_1_3 Siirrä ladattu tiedosto käsiteltäväksi (RYHMÄ 10 ARMAS TEKEE)
#   2_2_1_4 aja createExcelForGrading.py ja anna parametriksi ladatun tiedoston nimi (RYHMÄ 10 SANNA TEKEE)
#   2_2_1_5 poista output.xls turhat sarakkeet
#   2_2_1_6 kopioi tiedot arviointityökirjaan ryhmien tiedot-välilehdelle
#   2_2_1_7 Vie sähköpostiosoitteet välilehdille "RyhmäOsioArviointi" ja "KOONTI"