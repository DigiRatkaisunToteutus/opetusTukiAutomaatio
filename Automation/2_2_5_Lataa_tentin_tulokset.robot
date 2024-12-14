Documentation       Testataan dokumentaatiota
'''                 testi 

*** Settings ***

Resource    ../Resources/2_2_5_1_etsi_ja_avaa_tentti.resource
*** Variables ***
${URL}    https://moodle.eoppimispalvelut.fi/


*** Tasks ***
2_2_5 Lataa tentin tulokset
    2_2_5_1 Etsi ja avaa tentti TENTINNIMI
#    2_2_5_2 Lataa tentin tulokset exelinä
#    2_2_5_3 Kopioi tulokset arviointiexelin välilehteen Tentti