import os


def manage_json_files_in_downloads():
    """
    Hakee käyttäjän Downloads-hakemiston ja käsittelee JSON-tiedostot lisäämällä juoksevan numeroinnin alkuun.
    """
    # Hae käyttäjän kotihakemisto (USERPROFILE)
    user_profile = os.environ.get("USERPROFILE")
    if not user_profile:
        return "Käyttäjän profiilia ei löydy."

    # Määritä Downloads-hakemisto
    downloads_dir = os.path.join(user_profile, "Downloads")

    # Tarkista, löytyykö hakemisto
    if not os.path.exists(downloads_dir):
        return f"Kansiota {downloads_dir} ei löydy."

    # Hae kaikki JSON-tiedostot hakemistosta
    json_files = [f for f in os.listdir(downloads_dir) if f.lower().endswith('.json')]

    if not json_files:
        return "Ei JSON-tiedostoja löydetty Downloads-kansiosta."

    # Järjestä tiedostot aakkosjärjestykseen (lisäominaisuus, jotta numerot ovat loogisia)
    json_files.sort()

    # Uudelleennimeä tiedostot
    renamed_count = 0
    for index, file in enumerate(json_files, start=1):
        base_name, extension = os.path.splitext(file)  # Erota nimi ja tiedostopääte
        new_name = f"{index}_{base_name}{extension}"  # Lisää juokseva numerointi alkuun

        old_path = os.path.join(downloads_dir, file)
        new_path = os.path.join(downloads_dir, new_name)

        if not os.path.exists(new_path):  # Tarkista, ettei samaa nimeä ole jo olemassa
            os.rename(old_path, new_path)
            renamed_count += 1

    return f"Löydettiin {len(json_files)} JSON-tiedosto(a), joista {renamed_count} uudelleennimettiin."
