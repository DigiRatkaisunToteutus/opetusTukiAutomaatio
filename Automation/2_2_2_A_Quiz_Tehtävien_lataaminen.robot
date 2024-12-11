Documentation       Testataan dokumentaatiota
'''                 testi 

*** Settings ***

Resource    ../Resources/2_2_2_1_Lataa_arviointikirja.resource
Resource    ../Resources/2_2_2_2_Avaa_ladattu_exceli.resource
*** Variables ***
${PAGE_1_URL}   file:///C:/Users/heidi/AppData/Local/Temp/4df1f160-9a64-4ef4-823b-b442d8356d26_static_pages.zip.static_pages.zip/static_pages/2_2_2_A_Quiz-Teht%C3%A4v%C3%A4t/2_2_2_1_a_Kurssi_%20Testaus%20Flip%202%20_%20Lapinkampus%20Moodle.htm
${PAGE_2_URL}   file:///C:/Users/heidi/AppData/Local/Temp/8c985fe7-ffd6-4298-a30f-597e965a1484_static_pages.zip.static_pages.zip/static_pages/2_2_2_A_Quiz-Teht%C3%A4v%C3%A4t/2_2_2_1_b_Arvioijan%20raportti%20_%20Testaus%20Flip%202%20_%20Lapinkampus%20Moodle.htm
${PAGE_3_URL}   file:///C:/Users/heidi/AppData/Local/Temp/efdc479a-c759-4d9f-bc50-75c52b800665_static_pages.zip.static_pages.zip/static_pages/2_2_2_A_Quiz-Teht%C3%A4v%C3%A4t/2_2_2_1_c_Vie%20muotoon%20OpenDocument-taulukko%20_%20Testaus%20Flip%202%20_%20Lapinkampus%20Moodle.htm

*** Tasks ***
2_2_2_A Quiz- Tehtävien lataaminen PAREMPI VAIHTOEHTO
    2_2_2_1 Lataa arviointikirja
    2_2_2_2 Avaa ladattu exceli
#    2_2_2_3 kopioi ladatusta sähköpostiosoite ja moduulitentit-sarakkeet
#    2_2_2_4 Avaa arviointiexceli
#    2_2_2_5 liitä tiedot arvointiexelin välilehdelle "QuizReal" (huomioi kaavat)