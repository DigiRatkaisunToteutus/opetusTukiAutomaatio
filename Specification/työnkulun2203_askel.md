Kuvaus työnkulun askelista

Ongelmia ja ratkaisuja

Virhe: "Text 'Hae Digitaalisen ratkaisun toteutus - T42T165OJ-3003' did not appear in 30 seconds."

Ratkaisu: Tarkistettu xpath ja lisätty Wait Until Element Is Visible varmistamaan, että hakukenttä latautuu ennen syötteen antamista.

Virhe: "WebDriver session does not exist."

Ratkaisu: Varmistettu, että Selenium WebDriver on päivitetty ja asennettu oikein.

Toiminnan tarkistus:

Skripti suorittaa seuraavat vaiheet:

Avaa selaimen ja menee Moodle-sivustolle.

Odottaa hakukentän latautumista ja suorittaa hakutermin syötön.

Etsii annetun kurssin ja vahvistaa sen löytymisen.