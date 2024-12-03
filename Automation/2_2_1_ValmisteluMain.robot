Documentation       Testataan dokumentaatiota
'''                 testi
*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${OsallistujatURL}    https://moodle.eoppimispalvelut.fi/user/index.php?id=20435
${Browser}            Edge
${locator_list}       Create List   css:div#div_id

*** Tasks ***
open browser to users
    open browser       ${OsallistujatURL}  ${Browser}
    title should be    T42T165OJ-3003: Osallistujat | Lapinkampus Moodle
get userlist items
    create list    ${locator_list}

*** Test Cases ***
#    2_2_1_1 Kirjaudu moodleen (Ryhmä 9 tekee)
#    2_2_1_2 Hae kurssin osallistujayhteenveto    (RYHMÄ 10 SAMI TEKEE)
open browser to users
get userlist items
#    2_2_1_3 Siirrä ladattu tiedosto käsiteltäväksi (RYHMÄ 10 ARMAS TEKEE)
#    2_2_1_4 aja createExcelForGrading.py ja anna parametriksi ladatun tiedoston nimi (RYHMÄ 10 SANNA TEKEE)
#    2_2_1_5 poista output.xls turhat sarakkeet (RYHMÄ 11 tekee)
#    2_2_1_6 kopioi tiedot arviointityökirjaan ryhmien tiedot-välilehdelle (RYHMÄ 11 tekee)
#    2_2_1_7 Vie sähköpostiosoitteet välilehdille "RyhmäOsioArviointi" ja "KOONTI" (RYHMÄ 11 tekee)