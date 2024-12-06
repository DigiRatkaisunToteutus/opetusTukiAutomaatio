Documentation       Testataan dokumentaatiota
'''                 testi 

*** Settings ***
Library    SeleniumLibrary
Library     OperatingSystem

*** Variables ***
${URL}     https://moodle.eoppimispalvelut.fi/

*** Keywords ***
2_2_1_2 Hae kurssin osallistujayhteenveto
    Kirjaudu moodleen
    Open Site
    Choose Groups Summary
    Download JSON File
Kirjaudu moodleen
    Open Browser    ${URL}    chrome
    Title Should Be    Kirjaudu sivustoon | Lapinkampus Moodle
Open Site
    Open browser  ../Stateic_pages/2_2_1_2_A_Moodle.htm

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

2_2_1_4 aja createExcelForGrading.py ja anna parametriksi ladatun tiedoston nimi
 #   Python koodin ajaminen
 # Python  createExcelForGrading.py
  #Run  C:\Users\temel\Desktop\Lapin Amk\Digitaalisen ratkaisun toteutus\Projekti\opetusTukiAutomaatio\Resources\createExcelForGrading.py
      Run  "..\Resources\createExcelForGrading.py"