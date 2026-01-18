import requests
import time
import deepl
import os
import sys
from slugify import slugify
from dotenv import load_dotenv

load_dotenv()

# --- 1. CONFIGURATION DES LANGUES ---
LANG_CONFIG = {
    "it": {
        "strapi": "it-CH",
        "deepl": "IT"
    },
    "de": {
        "strapi": "de-CH",
        "deepl": "DE"
    },
    "en": {
        "strapi": "en",
        "deepl": "EN-US"
    }
}

# --- CONFIGURATION GLOBALE ---
API_URL = "https://api.nopasaran.ch/api"
API_TOKEN = os.getenv("STRAPI_API_TOKEN")
DEEPL_AUTH_KEY = os.getenv("DEEPL_AUTH_KEY")

if not API_TOKEN or not DEEPL_AUTH_KEY:
    print("❌ ERREUR : Les tokens sont manquants dans le fichier .env")
    sys.exit(1)

MAX_TRANSLATIONS_PER_LANG = 5  # Limite par langue pour éviter de tout cramer
SOURCE_LOCALE = "fr-CH"
COLLECTION_NAME = "the-wall-of-shames"

translator = deepl.Translator(DEEPL_AUTH_KEY)

headers = {
    "Authorization": f"Bearer {API_TOKEN}",
    "Content-Type": "application/json"
}

def translate_text(text, target_lang_deepl):
    if not text or len(text) < 2: return text
    try:
        result = translator.translate_text(
            text, 
            source_lang="FR", 
            target_lang=target_lang_deepl
        )
        return result.text
    except Exception as e:
        print(f"❌ Erreur DeepL: {e}")
        return text

def get_incidents():
    print(f"📥 Récupération des incidents en {SOURCE_LOCALE}...")
    url = f"{API_URL}/{COLLECTION_NAME}?locale={SOURCE_LOCALE}&populate=*&pagination[pageSize]=1000"
    try:
        response = requests.get(url, headers=headers)
        if response.status_code == 200:
            return response.json()['data']
        return []
    except Exception as e:
        print(f"❌ Erreur récupération incidents: {e}")
        return []

def force_unpublish(document_id, target_locale):
    """Force le passage en Draft pour la locale cible"""
    url = f"{API_URL}/{COLLECTION_NAME}/{document_id}/unpublish"
    payload = { "locale": target_locale }

    try:
        response = requests.post(url, headers=headers, json=payload)
        if response.status_code == 200:
            print(f"   └── 🌑 Article passé en Brouillon ({target_locale}).")
            return True
        else:
            print(f"   └── ⚠️ Echec unpublish: {response.status_code}")
            return False
    except Exception as e:
        print(f"   └── ❌ Erreur connexion: {e}")
        return False

def create_localization(document_id, translated_data, target_locale):
    url = f"{API_URL}/{COLLECTION_NAME}/{document_id}?locale={target_locale}"
    payload = { "data": translated_data }
    
    try:
        response = requests.put(url, headers=headers, json=payload)
        if response.status_code == 200:
            print(f"   ✅ Traduction créée pour DocumentID {document_id}")
            return True
        else:
            print(f"❌ Erreur Strapi ID {document_id}: {response.text}")
            return False
    except Exception as e:
         print(f"❌ Erreur connexion: {e}")
         return False

def process_language(lang_key, config, incidents):
    """Traite une langue spécifique"""
    target_locale = config["strapi"]
    deepl_code = config["deepl"]
    
    print(f"\n🚀 Démarrage : Traduction FR -> {lang_key.upper()} (Strapi: {target_locale})")
    
    processed_count = 0

    for incident in incidents:
        if processed_count >= MAX_TRANSLATIONS_PER_LANG:
            print(f"🛑 Limite de {MAX_TRANSLATIONS_PER_LANG} traductions atteinte pour {lang_key.upper()}.")
            break

        # Vérification si déjà traduit
        existing_locales = [loc['locale'] for loc in incident.get('localizations', [])]
        if target_locale in existing_locales:
            continue

        print(f"🔄 Traduction ({processed_count + 1}/{MAX_TRANSLATIONS_PER_LANG}) : '{incident['title']}'")

        # --- PRÉPARATION RELATIONS ---
        sujet_doc_id = incident.get('sujet', {}).get('documentId') if incident.get('sujet') else None

        evidence_images_ids = []
        if incident.get('evidence_image'):
            imgs = incident['evidence_image']
            if isinstance(imgs, list):
                evidence_images_ids = [img['id'] for img in imgs]
            elif isinstance(imgs, dict):
                evidence_images_ids = [imgs['id']]

        sources_clean = []
        if incident.get('sources'):
            for source in incident['sources']:
                new_source = source.copy()
                if 'id' in new_source: del new_source['id']
                sources_clean.append(new_source)

        # --- TRADUCTION ---
        translated_title = translate_text(incident['title'], deepl_code)
        translated_slug = slugify(translated_title)

        print(f"   ↳ Titre traduit ({lang_key.upper()}) : '{translated_title}'")

        translated_data = {
            "title": translated_title,
            "slug": translated_slug,
            "description": translate_text(incident['description'], deepl_code),
            "consequence": translate_text(incident['consequence'], deepl_code),
            "subject_role": translate_text(incident['subject_role'], deepl_code),
            
            # Champs fixes
            "incident_date": incident['incident_date'],
            "incident_location": incident['incident_location'],
            "category": incident['category'],
            "visible": incident['visible'],
            "sujet": sujet_doc_id,
            "evidence_image": evidence_images_ids,
            "sources": sources_clean,
            "publishedAt": None,
        }

        # --- ENVOI ---
        success = create_localization(incident['documentId'], translated_data, target_locale)
        
        if success:
            # Optionnel : décommenter si vous voulez forcer le brouillon
            # force_unpublish(incident['documentId'], target_locale)
            processed_count += 1
            time.sleep(0.5)

def main():
    # 1. Récupération unique des incidents source
    all_incidents = get_incidents()
    print(f"🔎 Trouvé {len(all_incidents)} incidents source.")

    # 2. Boucle sur toutes les langues configurées
    for lang_key, config in LANG_CONFIG.items():
        process_language(lang_key, config, all_incidents)
        print(f"✅ Fin du traitement pour {lang_key.upper()}.")
        time.sleep(1) # Petite pause entre les langues

    print("\n🎉 Toutes les langues ont été traitées.")

if __name__ == "__main__":
    main()