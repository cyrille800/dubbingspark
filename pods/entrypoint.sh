#!/bin/bash

echo "🚀 Démarrage du serveur FastAPI personnalisé..."

# Configuration
WORK_DIR="/workspace/app"
GITHUB_USER="VOTRE_USERNAME"
GITHUB_REPO="VOTRE_REPO"

# Créer le répertoire de travail
mkdir -p $WORK_DIR
cd $WORK_DIR

# Télécharger les fichiers
echo "📥 Téléchargement des fichiers..."
curl -f -o server.py https://raw.githubusercontent.com/cyrille800/dubbingspark/main/pods/server.py
curl -f -o requirements.txt https://raw.githubusercontent.com/cyrille800/dubbingspark/main/pods/requirements.txt

# Installer les dépendances
echo "📦 Installation des dépendances..."
pip install -r requirements.txt

# Démarrer le serveur
echo "🎯 Démarrage du serveur..."
export HOST=0.0.0.0
export PORT=22

which python3
python3 server.py
