import requests
import time
from deep_translator import GoogleTranslator

# --- CONFIGURATION ---
# L'URL de votre API (en local pour tester, ou la prod https://api.nopasaran.ch)
API_URL = "http://localhost:1337/api" 
# Le Token que vous venez de créer dans Strapi
API_TOKEN = "8717f7b186be6ec5b7191ec531e6ee8a19af94fcc3dccea49d1bb5f34e13c3e5009240215ec002ec4ef0ecf11ad61ec76d50f5b8c2b8f568c93b23e379c0e7567ebabfcc3ae50bd02faed61bb46f6b4929ad5449c63193bcacf686317b9d8cc2a24f70e36dd1be1cc1e2c1999275780ae6e950ffff761081a6027b4158cb97cb"

# Les langues
SOURCE_LOCALE = "fr-CH"
TARGET_LOCALE = "it-CH"

# Le nom de la collection (au pluriel, comme dans l'URL)
COLLECTION_NAME = "the-wall-of-shames"

# Headers pour l'authentification Strapi
headers = {
    "Authorization": f"Bearer {API_TOKEN}",
    "Content-Type": "application/json"
}

def translate_text(text):
    """Fonction qui appelle le service de traduction"""
    if not text or len(text) < 2:
        return text
    try:
        # On utilise Google Translate via deep-translator (gratuit)
        # Pour une meilleure qualité, on pourrait utiliser l'API DeepL ici
        return GoogleTranslator(source='fr', target='it').translate(text)
    except Exception as e:
        print(f"Erreur de traduction: {e}")
        return text

def get_incidents():
    """Récupère tous les incidents en français avec leurs localisations existantes"""
    print("📥 Récupération des incidents...")
    # On récupère la locale FR et on peuple 'localizations' pour voir si l'italien existe déjà
    # On met un grand pageSize pour tout avoir
    url = f"{API_URL}/{COLLECTION_NAME}?locale={SOURCE_LOCALE}&populate=localizations&pagination[pageSize]=1000"
    
    response = requests.get(url, headers=headers)
    if response.status_code == 200:
        return response.json()['data']
    else:
        print(f"Erreur API: {response.status_code} - {response.text}")
        return []

def create_localization(incident_id, translated_data):
    """Crée la version italienne pour un incident donné"""
    url = f"{API_URL}/{COLLECTION_NAME}/{incident_id}/localizations"
    
    payload = {
        "targetLocale": TARGET_LOCALE,
        # Strapi attend les données directement ou dans 'data' selon les versions,
        # Pour la création de loc, c'est souvent à la racine du body
        **translated_data
    }

    response = requests.post(url, headers=headers, json=payload)
    
    if response.status_code == 200:
        print(f"✅ Traduction créée pour l'ID {incident_id}")
    else:
        print(f"❌ Erreur création ID {incident_id}: {response.text}")

def main():
    incidents = get_incidents()
    print(f"Trouvé {len(incidents)} incidents en {SOURCE_LOCALE}.")

    for incident in incidents:
        # 1. Vérifier si la traduction existe déjà
        existing_locales = [loc['locale'] for loc in incident['localizations']]
        
        if TARGET_LOCALE in existing_locales:
            print(f"⏩ ID {incident['id']} : Déjà traduit en {TARGET_LOCALE}. On passe.")
            continue

        print(f"🔄 Traduction en cours pour ID {incident['id']} : {incident['title']}...")

        # 2. Préparer les données à traduire
        # Attention : Ne traduisez pas le 'slug' automatiquement, ou alors nettoyez-le bien
        # Ici on garde le slug français ou on ajoute -it
        
        translated_data = {
            "title": translate_text(incident['title']),
            "description": translate_text(incident['description']),
            "consequence": translate_text(incident['consequence']),
            "subject_role": translate_text(incident['subject_role']),
            # On copie les champs qui ne changent pas (relation, date, etc.)
            "incident_date": incident['incident_date'],
            "incident_location": incident['incident_location'],
            "category": incident['category'],
            # "slug": f"{incident['slug']}-it", # Optionnel : suffixer le slug
            "slug": incident['slug'], # Strapi gère souvent l'unicité par locale, donc même slug c'est OK
            # Pour les relations (Sujet), Strapi v5 les lie parfois automatiquement lors de la localisation,
            # sinon il faut passer l'ID du sujet.
            # Dans la plupart des cas, create localization copie les relations non-internationalisées.
        }

        print(f"🔄 Translated data: {translated_data}")

        # 3. Envoyer à Strapi
        # create_localization(incident['id'], translated_data)
        
        # Petite pause pour être gentil avec l'API de traduction
        time.sleep(1)

if __name__ == "__main__":
    main()
