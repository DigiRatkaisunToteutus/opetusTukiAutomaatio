# opetusTukiAutomaatio

# kansiorakenne
Nopeasti kasaan kyhätty rakenne joka toivottavasti tukee toimintaa riittävästi. 
* automation-kansio
    * vastaa robotframework test-kansiota siinä mielessä, että siellä on kaikki ajettavat .robot-tiedostot. Sen alla on testien sijaan työnkulku-tason .robot tiedostot. Niiden **nimeämissäännöistä**: alkuun tulee työnkulun numerokoodi. Numerokoodi muodostuu samalla tavalla kuin Liiketoimintaprosessien automatisoinnissa on kerrottu. esimerkiksi "2.1 Kurssivalmistelut" toimintamalli-tasoon voisi liittyä prosessin kulku (3-taso) prosessi "2.1.1 youtube-videon valmistelu". Kun työ aloitetaan, numeroidaan se jo työnkulku-tason prosessiksi: "2.1.1.1 Youtube-videon valmistelu". Tämä nimi näkyy prosessien tekstimuotoisissa kuvauksissa. Sinne myös tulee tiedoston nimi linkiksi, se voisi olla vaikka 2_1_1_1_YTube.robot. 
    
* data-kansio 
    * Sisältää kaikki prosessiaskelien tuottamat välituotteet. Laitatte prosessiaskel-toteutuksen tuottaman datan tänne. Tähän ei sisälly data, joka on generoitu testausta varten. Ne ovat kansiossa test-data.

* output-kansio
    * Robot frameworksin kirjoittamat loki-tiedot ja raportit siitä miten robotin ajo onnistui. 

* resources
    * testauksessa tarvittavat muuttujat ja funktiot. Tänne rakennatte avainsanat joita käytätte automation kansiossa olevissa työnkuluissa. 
* testdata
    * tähän kansioon laitan www-sivun lähdekoodeja tarpeen mukaan testien ladattaviksi. Koska teillä ei ole pääsyä opettajan käyttöliittymään. 
    * **HUOM**: Tämä tarkoittaa sitä että robotissa ei voi oikeasti testata siirtymiä sivulta toiselle heti. On vain kirjoitettava sellainen siirtymän varmistaminen mutta se pitää laittaa kommentteihin, merkata selvästi "TODO: poista kommenteista oikeaa testiä varten". Kommentin alapuolelle sitten sivun lataaminen tiedostosta, tästä hakemistosta. 
    * **HUOM**: Nimeän sivut Työnkulun ja askelen mukaisiin kansioihin. Jos materiaalia puuttuu, pyytäkää minua tekemään se. Teen niitä sitä mukaa kun askeleet tulevat työn alle. 

* spesification
    * Tähän kansioon teette omien työnkulkujenne graafisen esityksen ja mahdollisesti tarvittavat tekstimuotoiset kuvaukset. 
    
* examples
    * Tähän kansioon voidaan tehdä erilaisia esimerkkejä robot frameworkin käytöstä. Tässä voidaan myös selvitellä ongelmia. Eli tähän voi tuoda toimimattomia robotteja jotta minä tai kollegat voivat asiaa selvitellä omissa ympäristöissään. 

* static_pages
    * Sisältää tallennettuja www-sivuja moodlen eri vaiheista. Zip-tiedosto Tulee moodleen ja sitä tarvittaessa täydennetään. 

# Mitä täydessä askeleen toteutus kommitissa on?
* automation-kansioon: robotti tai sen muutos
* specification-kansioon: työnkulun kuvausta sen verran kuin on tarpeen
* resources-kansioon: avainsanat joita käytätte omissa roboteissanne. 

