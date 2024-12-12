Documentation       Testataan dokumentaatiota
'''                 testi 

*** Settings ***

Resource    ../Resources/2_2_2_1_Lataa_arviointikirja.resource
Resource    ../Resources/2_2_2_2_Avaa_ladattu_exceli.resource

*** Variables ***
${PAGE_1_URL}    file:///${CURDIR}/../static_pages/2_2_2_A_Quiz-Tehtävät/2_2_2_1_a_Kurssi_ Testaus Flip 2 _ Lapinkampus Moodle.htm
${PAGE_2_URL}    file:///${CURDIR}/../static_pages/2_2_2_A_Quiz-Tehtävät/2_2_2_1_b_Arvioijan raportti _ Testaus Flip 2 _ Lapinkampus Moodle.htm
${PAGE_3_URL}    file:///${CURDIR}/../static_pages/2_2_2_A_Quiz-Tehtävät/2_2_2_1_c_Vie muotoon OpenDocument-taulukko _ Testaus Flip 2 _ Lapinkampus Moodle.htm


*** Tasks ***
2_2_2_A Quiz- Tehtävien lataaminen PAREMPI VAIHTOEHTO
    2_2_2_1 Lataa arviointikirja
    2_2_2_2 Avaa ladattu exceli
#    2_2_2_3 kopioi ladatusta sähköpostiosoite ja moduulitentit-sarakkeet
#    2_2_2_4 Avaa arviointiexceli
#    2_2_2_5 liitä tiedot arvointiexelin välilehdelle "QuizReal" (huomioi kaavat)