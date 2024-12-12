
Python 3.13.0

# Tilanne
Sain eilen kummankin askeleen 2_2_2_1 ja 2_2_2_2 toimimaan yksittäin (ykkösen tosin vääränlaisilla tiedostopoluilla), mutta jotain tapahtui, koska tekemäni pull requestin jälkeen ensimmäinen askel ei enää toiminut. Tuli virheilmoitus, että tiedosto (staattinen sivu) ei ole käytettävissä tai se on muuttunut. Sain muutettua tiedostopolut oikeiksi, mutta sen jälkeen ongelmaksi tuli ruudulle ilmestyvä pop up -ikkuna, jota en ole saanut pois. Pop up estää kaiken muun klikkailun sivulla.

Toinen askel toimii, kun manuaalisesti varmistaa, että Lataukset-kansiossa on tarvittava Excel-tiedosto. Se latautui sinne kun ensimmäinen askel vielä toimi. Jossain kohtaa olin kyllä onnistunut hävittämään kokoArviointikirja.xlxs-tiedoston Testdata-kansiosta kokonaan, en tiedä miten se tapahtui.

# Ratkaisuyritykset
Yritin poistaa pop upia xpathin id:n avulla, ei toiminut koska id on dynaaminen, se on siis joka kerralla sivulle mentäessä eri.
Samoin yritin käyttää erilaisia muuttujia paikantamaan oikean elementin, kuten id-koodin numerosarjan alkua (starts-with) sekä @class- ja @title-muuttujia. Tällöin ongelmaksi tuli, että samassa paikassa on useampi elementti, joista jokin blokkaa toisen niin, että sitä ei pääse klikkaamaan.
Yritin JavaScriptejä maskin poistamiseen ja klikkaamiseen, ei auttanut. Keksin myös, että pop upin saa pois myös klikkaamalla missä tahansa kohtaa ruudulla (paitsi itse pop up -ikkunassa), yritin kohdistaa klikkausta bodyyn x- ja y-koordinaattien avulla, ei toiminut koska jokin elementti peitti bodyn ehkä osannut poistaa sitä.
Yritin eri kohdissa timeoutilla odotella, että elementti on enabled ja myös sleep-toimintoa.

# Virhe 
En saa edes ensimmäisen sivun ensimmäistä valikkoa valittua, koska pop up estää. Pop up ei häviä, eikä valikko tule näkyviin.
En nyt tämän enempää osaa tehdä ja luovutan tämän osalta. Jos parin kanssa saamme jonkin ahaa-elämyksen, yritän vielä, mutta omat keinot loppui tähän.

Viimeisin ilmoitus siitä kohtaa kun jökkäsi: 
Element 'xpath=//a[@role='menuitem' and @class='nav-link' and text()='Arvioinnit']' not visible after 15 seconds. Pidempi odottelu tässä ei auta mitään, koska vaikka edelliset komennot menee läpi, niistä ei tapahdu mitään.