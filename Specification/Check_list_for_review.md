# Tarkastuslista katselmointiin
Tätä listaa voi käyttää varmistamaan yhtenäistä toteutusta

# Commitista Tarkastettava tasiat
* Automation - hakemistossa vain kolmos-tason prosessi-robot-tiedostoja
    * kolmos-tason prosessin avainsana taskiotsikkona
    * 4-tason prosessiaskeleet sen alla, toteuttamattomat kommenteissa
* Resources - hakemistossa on toteutetun työnkulkutason mukaan nimetty resource-tiedosto
    * siinä on 1. taskina automation-hakemiston alla toteutettu työnkulku-tason askel
* Käytetään vain suhteellisia polkuja. 
    * Näin vältetään mm. käyttäjätunnuksen näkyminen roboteissa ja yleiskäyttöisyys
* Askeleessa on käytettävä static_pages -kansion alla olevaa tiedostoa, tai testdata kansion alla olevaa tiedostoa oikean tiedoston alla olevaa tiedostoa. 
    * Jos tarpeen. Tiedoston kopioiti-askeleessa ei tarvitse. 
* Testitiedostoja ei saa olla mukana
* loki-tiedostoja ei saa olla mukana (html, xml tai png)
