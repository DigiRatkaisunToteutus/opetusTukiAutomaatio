Documentation       Testataan dokumentaatiota
'''                 testi 

*** Settings ***

Resource    ../Resources/2_2_1_Valmistelu.resource
Resource    ../Resources/2_2_4_4_kopioi_juureen_ja_aja_handle_all_task_zips.resource
*** Variables ***
${URL}    https://moodle.eoppimispalvelut.fi/


*** Tasks ***
2_2_4 Lataa muut tehtävät
#    2_2_4_1 lataa ajankäyttösuunnitelmat
#    2_2_4_2 lataa miellekartat
#    2_2_4_3 lataa projektinauhoitteet
    2_2_4_4 kopioi juureen ja aja handle_all_task_zips.py