# opetusTukiAutomaatio

# kansiorakenne
Nopeasti kasaan kyhätty rakenne joka toivottavasti tukee toimintaa riittävästi. 
* automation-kansio
    * vastaa robotframework test-kansiota siinä mielessä, että siellä on kaikki ajettavat .robot-tiedostot. Sen alla on testien sijaan työnkulku-tason .robot tiedostot. Niiden **nimeämissäännöistä**: alkuun tulee työnkulun numerokoodi. Numerokoodi muodostuu samalla tavalla kuin Liiketoimintaprosessien automatisoinnissa on kerrottu. esimerkiksi "2.1 Kurssivalmistelut" toimintamalli-tasoon voisi liittyä prosessin kulku (3-taso) prosessi "2.1.1 youtube-videon valmistelu". Kun työ aloitetaan, numeroidaan se jo työnkulku-tason prosessiksi: "2.1.1.1 Youtube-videon valmistelu". Tämä nimi näkyy prosessien tekstimuotoisissa kuvauksissa. Sinne myös tulee tiedoston nimi linkiksi, se voisi olla vaikka 2_1_1_1_YTube.robot. 
    
* data-kansio 
    * Sisältää kaikki välituotteet joita toiset työnkulut mahdollisesti tarvitsevat. Tähän ei välttämättä tule tiedostoja. 

* output-kansio
    * Robot frameworksin kirjoittamat loki-tiedot ja raportit siitä miten robotin ajo onnistui. 

* resources
    * testauksessa tarvittavat muuttujat ja funktiot. Tänne rakennatte avainsanat joita käytätte automation kansiossa olevissa työnkuluissa. 
* testdata
    * tähän hakemistoon laitan www-sivun lähdekoodeja tarpeen mukaan testien ladattaviksi. Koska teillä ei ole pääsyä opettjan käyttöliittymään. 
    **HUOM**: Tämä tarkoittaa sitä että robotissa ei voi oikeasti testata siirtymiä sivulta toiselle heti. On vain kirjoitettava sellainen siirtymän varmistaminen mutta se pitää laittaa kommentteihin, merkata selvästi TODO: poista kommenteista oikeaa testiä varten. Sen alapuolelle sitten sen sivun lataaminen tiedostosta, tästä hakemistosta, jonka pitäisi tulla esille tositilanteessa. 

* spesification
    * Tähän hakemistoon teette omien työnkulkujenne graafisen esityksen ja mahdollisesti tarvittavat tekstimuotoiset kuvaukset. 
    

# Mitä täydessä askeleen toteutus kommitissa on?
* automation-kansioon: robotti tai sen muutos
* specification-kansioon: työnkulun kuvausta
* resources-kansioon: avainsanat joita käytätte omissa roboteissanne. 

