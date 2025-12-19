import requests
import time
import deepl
import os
import sys
import argparse
from slugify import slugify
from dotenv import load_dotenv

load_dotenv()

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

API_URL = "https://api.nopasaran.ch/api"
API_TOKEN = os.getenv("STRAPI_API_TOKEN")
DEEPL_AUTH_KEY = os.getenv("DEEPL_AUTH_KEY")

if not API_TOKEN or not DEEPL_AUTH_KEY:
    print("❌ ERREUR : Les tokens sont manquants dans le fichier .env")
    sys.exit(1)

MAX_TRANSLATIONS = 1
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
    except Exception:
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
            print(f"✅ Traduction créée pour DocumentID {document_id}")
            return True
        else:
            print(f"❌ Erreur Strapi ID {document_id}: {response.text}")
            return False
    except Exception as e:
         print(f"❌ Erreur connexion: {e}")
         return False

def main():
    # --- GESTION DES ARGUMENTS ---
    parser = argparse.ArgumentParser(description="Traduction automatique Strapi via DeepL")
    parser.add_argument("lang", help="Langue cible (it, de, en)", choices=LANG_CONFIG.keys())
    args = parser.parse_args()

    # Configuration choisie
    target_config = LANG_CONFIG[args.lang]
    TARGET_LOCALE = target_config["strapi"]
    DEEPL_CODE = target_config["deepl"]

    print(f"🚀 Démarrage : Traduction FR -> {args.lang.upper()} (Strapi: {TARGET_LOCALE})")

    incidents = get_incidents()
    print(f"🔎 Trouvé {len(incidents)} incidents source.")
    
    processed_count = 0

    for incident in incidents:
        if processed_count >= MAX_TRANSLATIONS:
            print(f"🛑 Limite de {MAX_TRANSLATIONS} traductions atteinte.")
            break

        existing_locales = [loc['locale'] for loc in incident.get('localizations', [])]
        
        # On saute si la langue cible existe déjà
        if TARGET_LOCALE in existing_locales:
            continue

        print(f"🔄 Traduction ({processed_count + 1}/{MAX_TRANSLATIONS}) : '{incident['title']}'...")

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

        italian_title = translate_text(incident['title'], DEEPL_CODE)
        italian_slug = slugify(italian_title)

        translated_data = {
            "title": italian_title,
            "slug": italian_slug,
            "description": translate_text(incident['description'], DEEPL_CODE),
            "consequence": translate_text(incident['consequence'], DEEPL_CODE),
            "subject_role": translate_text(incident['subject_role'], DEEPL_CODE),
            
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
        success = create_localization(incident['documentId'], translated_data, TARGET_LOCALE)
        
        if success:
            # force_unpublish(incident['documentId'], TARGET_LOCALE)
            processed_count += 1
            time.sleep(0.5)

if __name__ == "__main__":
    main()
