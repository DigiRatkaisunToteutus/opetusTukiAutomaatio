Documentation       Testataan dokumentaatiota
'''                 testi 

*** Settings ***

Resource    ../Resources/2_2_1_Valmistelu.resource
# Resource    ../Resources/2_2_0_MeneKurssille.resource
*** Variables ***
${URL}    https://moodle.eoppimispalvelut.fi/


*** Tasks ***
2_2_0 Mene kurssisivulle
    2_2_0_1 Kirjaudu moodleen 
    2_2_0_2 Näytä kaikki kurssit
    2_2_0_3 Etsi kurssi 
    2_2_0_4 Klikkaa kurssin nimeä
