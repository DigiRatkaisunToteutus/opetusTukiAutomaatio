Documentation       Testataan dokumentaatiota
'''                 testi 

*** Settings ***

Resource    ../Resources/2_2_2_3_kopioi_ladatusta_sähköpostiosoite_ja_moduulitentit-sarakkeetu.resource
*** Variables ***
${URL}    https://moodle.eoppimispalvelut.fi/


*** Tasks ***
2_2_2_A Quiz- Tehtävien lataaminen PAREMPI VAIHTOEHTO
#    2_2_2_1 Lataa arviointikirja
#    2_2_2_2 Avaa ladattu exceli
2_2_2_3 kopioi ladatusta sähköpostiosoite ja moduulitentit-sarakkeet
#    2_2_2_4 Avaa arviointiexceli
#    2_2_2_5 liitä tiedot arvointiexelin välilehdelle "QuizReal" (huomioi kaavat)