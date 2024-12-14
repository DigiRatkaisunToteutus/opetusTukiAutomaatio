
*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem
Resource    ../Resources/2_2_1_Valmistelu.resource
Resource    ../Resources/2_2_1_2_Osallistujayhteenveto.resource
Resource    ../Resources/2_2_1_4_Python_koodin_ajo.resource
Resource    ../Resources/2_2_1_6_kopioi_tiedot_arviointityökirjaan_ryhmien_tiedot-välilehdelle.resource

*** Variables ***
${URL}   https://moodle.eoppimispalvelut.fi/login/index.php

*** Test Cases ***
2_2_1_1 Kirjaudu Moodleen
    Kirjaudu Moodleen
    
2_2_1_2 Hae kurssin osallistujayhteenveto
    Open Site
    Choose Groups Summary
    Download JSON File
    
#    2_2_1_3 Siirrä ladattu tiedosto käsiteltäväksi

2_2_1_4 aja createExcelForGrading.py ja anna parametriksi ladatun tiedoston nimi
    Python koodin ajo

#    2_2_1_5 poista output.xls turhat sarakkeet
2_2_1_6 kopioi tiedot arviointityökirjaan ryhmien tiedot-välilehdelle
    Move Data Using Python Script

#    2_2_1_7 Vie sähköpostiosoitteet välilehdille "RyhmäOsioArviointi" ja "KOONTI"