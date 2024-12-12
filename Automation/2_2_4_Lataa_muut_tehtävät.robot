Documentation       Testataan dokumentaatiota
'''                 testi 

*** Settings ***

Resource    ../Resources/2_2_4_Lataa_muut_tehtävät.resource
*** Variables ***
${URL}    https://moodle.eoppimispalvelut.fi/


*** Tasks ***

2_2_4_1 lataa ajankäyttösuunnitelmat
    Avaa kurssin sivu
    Paina enter  #enterillä suljetaan sivustolle aukeava häiriöilmoitus
    Avaa ajankäyttösuunnitelmat
    Paina enter
    Katso ja arvioi palautuksia
    Lataa kaikki palautukset

2_2_4_2 lataa miellekartat
    Avaa kurssin sivu 2
    Paina enter
    Avaa tehtävät
    Lataa tehtävät  # toteutettu silmukkana tekoälyn avustuksena


   
    #Avaa yksilötehtävän palautus
    #Katso ja arvioi palautuksia 2
    #Lataa kaikki palautukset 2 - nämä varalla jos silmukka ei onnistu

# 2_2_4_3 lataa projektinauhoitteet