import requests
import time
import os
import deepl
from slugify import slugify
from dotenv import load_dotenv

load_dotenv()

API_URL = "https://api.nopasaran.ch/api" 

API_TOKEN = os.getenv("STRAPI_API_TOKEN")
DEEPL_AUTH_KEY = os.getenv("DEEPL_AUTH_KEY")
if not API_TOKEN or not DEEPL_AUTH_KEY:
    print("❌ ERREUR : Les tokens sont manquants. Vérifiez votre fichier .env")
    exit(1)

# Initialisation du traducteur DeepL
translator = deepl.Translator(DEEPL_AUTH_KEY)

MAX_TRANSLATIONS = 1

SOURCE_LOCALE = "fr-CH"
TARGET_LOCALE = "it-CH"
COLLECTION_NAME = "the-wall-of-shames"

# Headers pour l'authentification Strapi
headers = {
    "Authorization": f"Bearer {API_TOKEN}",
    "Content-Type": "application/json"
}

def translate_text(text):
    """Fonction qui appelle l'API DeepL"""
    if not text or len(text) < 2:
        return text
    try:
        # DeepL détecte la source automatiquement, mais on force le Français pour être sûr
        # target_lang="IT" pour Italien
        result = translator.translate_text(text, source_lang="FR", target_lang="IT")
        return result.text
    except Exception as e:
        print(f"❌ Erreur de traduction DeepL: {e}")
        return text

def get_incidents():
    print("📥 Récupération des incidents complets (avec relations)...")
    # CHANGEMENT ICI : populate=* pour tout récupérer (sujet, images, sources)
    url = f"{API_URL}/{COLLECTION_NAME}?locale={SOURCE_LOCALE}&populate=*&pagination[pageSize]=1000"
    try:
        response = requests.get(url, headers=headers)
        if response.status_code == 200:
            return response.json()['data']
        else:
            print(f"❌ Erreur API Strapi (Get): {response.status_code} - {response.text}")
            return []
    except Exception as e:
        print(f"❌ Erreur de connexion: {e}")
        return []

def create_localization(document_id, translated_data):
    # On utilise PUT avec ?locale=it-CH pour créer/mettre à jour la loc
    url = f"{API_URL}/{COLLECTION_NAME}/{document_id}?locale={TARGET_LOCALE}"
    
    payload = { "data": translated_data }
    
    try:
        response = requests.put(url, headers=headers, json=payload)
        if response.status_code == 200:
            print(f"✅ Traduction créée pour DocumentID {document_id}")
            return True
        else:
            print(f"❌ Erreur Strapi ID {document_id}: {response.status_code} - {response.text}")
            return False
    except Exception as e:
         print(f"❌ Erreur connexion: {e}")
         return False    

def main():
    # Vérification du crédit DeepL au démarrage (Optionnel mais pratique)
    try:
        usage = translator.get_usage()
        if usage.character.limit:
            print(f"ℹ️ Crédit DeepL: {usage.character.count} / {usage.character.limit} caractères utilisés.")
    except:
        pass

    incidents = get_incidents()
    print(f"🔎 Trouvé {len(incidents)} incidents en {SOURCE_LOCALE}.")

    processed_count = 0

    for incident in incidents:
        if processed_count >= MAX_TRANSLATIONS:
            print(f"🛑 Limite de {MAX_TRANSLATIONS} traductions atteinte. Arrêt du script.")
            break

        # Vérifier si la traduction existe déjà
        existing_locales = [loc['locale'] for loc in incident.get('localizations', [])]
        if TARGET_LOCALE in existing_locales:
            continue

        print(f"🔄 Traduction ({processed_count + 1}/{MAX_TRANSLATIONS}) pour '{incident['title']}'...")

        sujet_doc_id = incident.get('sujet', {}).get('documentId') if incident.get('sujet') else None

        # B. IMAGES (Media)
        # On récupère les IDs numériques des images
        evidence_images_ids = []
        if incident.get('evidence_image'):
            # Strapi renvoie parfois un objet seul ou une liste
            imgs = incident['evidence_image']
            if isinstance(imgs, list):
                evidence_images_ids = [img['id'] for img in imgs]
            elif isinstance(imgs, dict):
                evidence_images_ids = [imgs['id']]

        # C. SOURCES (Component)
        # On doit nettoyer les IDs internes des composants pour les dupliquer
        sources_clean = []
        if incident.get('sources'):
            for source in incident['sources']:
                new_source = source.copy()
                if 'id' in new_source: del new_source['id'] # On retire l'ID pour créer une copie
                sources_clean.append(new_source)

        # --- 2. TRADUCTION & CONSTRUCTION ---
        
        italian_title = translate_text(incident['title'])
        italian_slug = slugify(italian_title)

        translated_data = {
            "title": italian_title,
            "slug": italian_slug,
            
            "description": translate_text(incident['description']),
            "consequence": translate_text(incident['consequence']),
            "subject_role": translate_text(incident['subject_role']),
            
            # Copie des champs simples
            "incident_date": incident['incident_date'],
            "incident_location": incident['incident_location'],
            "category": incident['category'],
            "visible": incident['visible'],
            
            # --- RÉINJECTION DES RELATIONS ---
            "sujet": sujet_doc_id,          # On lie le même sujet
            "evidence_image": evidence_images_ids, # On lie les mêmes images
            "sources": sources_clean,       # On copie les sources
            
            # --- FORCER LE BROUILLON ---
            "publishedAt": None, 
        }

        # 3. ENVOI
        success = create_localization(incident['documentId'], translated_data)
        
        if success:
            processed_count += 1
            time.sleep(0.5)

if __name__ == "__main__":
    main()