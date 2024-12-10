Documentation       Testataan dokumentaatiota
'''                 testi 

*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Keywords ***
#2_2_1_4 aja createExcelForGrading.py ja anna parametriksi ladatun tiedoston nimi
Python koodin ajo
  #Python  createExcelForGrading.py
  #Run  C:\Users\temel\Desktop\Lapin Amk\Digitaalisen ratkaisun toteutus\Projekti\opetusTukiAutomaatio\Resources\createExcelForGrading.py
      Run  "..\Resources\createExcelForGrading.py"