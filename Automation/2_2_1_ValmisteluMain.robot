Documentation       Testataan dokumentaatiota
'''                 testi 

*** Settings ***

Resource    ../Resources/2_2_1_Valmistelu.resource
Resource    ../Resources/2_2_0_2_step.resource

*** Variables ***
${URL}    https://moodle.eoppimispalvelut.fi/


*** Tasks ***
2_2_1_0 Mene kurssisivulle
    Kirjaudu moodleen 
    
2_2_0_2 Näytä kaikki kurssit
    [Teardown]    Close Browser
    Avaa Kurssisivu
    Tarkista Kurssilista

    

