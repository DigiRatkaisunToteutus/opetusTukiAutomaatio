Documentation       Testataan dokumentaatiota
'''                 testi
*** Settings ***
Library     SeleniumLibrary
Library  OperatingSystem

*** Variables ***
*** Test Cases ***
#    2_2_1_1 Kirjaudu moodleen (Ryhmä 9 tekee)
#    2_2_1_2 Hae kurssin osallistujayhteenveto    (RYHMÄ 10 SAMI TEKEE)
#    2_2_1_3 Siirrä ladattu tiedosto käsiteltäväksi (RYHMÄ 10 ARMAS TEKEE)
#    2_2_1_4 aja createExcelForGrading.py ja anna parametriksi ladatun tiedoston nimi (RYHMÄ 10 SANNA TEKEE)
Python koodin ajaminen
 # Python  createExcelForGrading.py
  Run  C:\Users\temel\Desktop\Lapin Amk\Digitaalisen ratkaisun toteutus\Projekti\opetusTukiAutomaatio\Resources\createExcelForGrading.py


#    2_2_1_5 poista output.xls turhat sarakkeet (RYHMÄ 11 tekee)
#    2_2_1_6 kopioi tiedot arviointityökirjaan ryhmien tiedot-välilehdelle (RYHMÄ 11 tekee)
#    2_2_1_7 Vie sähköpostiosoitteet välilehdille "RyhmäOsioArviointi" ja "KOONTI" (RYHMÄ 11 tekee)