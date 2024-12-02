Documentation       Testataan dokumentaatiota
'''                 testi 

*** Settings ***

Resource    ../Resources/2_2_1_Valmistelu.resource
*** Variables ***
${URL}    https://moodle.eoppimispalvelut.fi/


*** Tasks ***
2_2_1 Valmistelu
    2_2_1_1 Kirjaudu moodleen
    2_2_1_2 Hae kurssin osallistujayhteenveto
    2_2_1_3 Siirrä ladattu tiedosto käsiteltäväksi
    2_2_1_4 aja createExcelForGrading.py ja anna parametriksi ladatun tiedoston nimi
    2_2_1_5 poista output.xls turhat sarakkeet
    2_2_1_6 kopioi tiedot arviointityökirjaan ryhmien tiedot-välilehdelle
    2_2_1_7 Vie sähköpostiosoitteet välilehdille "RyhmäOsioArviointi" ja "KOONTI"

