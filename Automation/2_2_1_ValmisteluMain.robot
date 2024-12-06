
*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem

Resource    ../Resources/2_2_1_2_Osallistujayhteenveto.resource
*** Variables ***
*** Test Cases ***
#    2_2_1_1 Kirjaudu moodleen
#    2_2_1_2 Hae kurssin osallistujayhteenveto    (RYHMÄ 10 SAMI TEKEE)
Open Site
Choose Groups Summary
Download JSON File
#   Click Button Lataa on kommenttina, koska muuten ilmoittaa FAIL, koska tiedostoa ei oikeasti ole olemassa.
#   Automaatio lataa koneelle ladatut tiedostot -kansioon tiedoston nimeltä: "T42T302OJ-3003_groups.json"

#    2_2_1_3 Siirrä ladattu tiedosto käsiteltäväksi (RYHMÄ 10 ARMAS TEKEE)

#    2_2_1_4 aja createExcelForGrading.py ja anna parametriksi ladatun tiedoston nimi (RYHMÄ 10 SANNA TEKEE)
Python koodin ajaminen
 # Python  createExcelForGrading.py
  Run  C:\Users\temel\Desktop\Lapin Amk\Digitaalisen ratkaisun toteutus\Projekti\opetusTukiAutomaatio\Resources\createExcelForGrading.py


#    2_2_1_5 poista output.xls turhat sarakkeet
#    2_2_1_6 kopioi tiedot arviointityökirjaan ryhmien tiedot-välilehdelle
#    2_2_1_7 Vie sähköpostiosoitteet välilehdille "RyhmäOsioArviointi" ja "KOONTI"