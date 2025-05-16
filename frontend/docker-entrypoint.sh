#!/bin/bash
# Script pour remplacer les variables d'environnement dans la configuration nginx

# Remplacer les variables d'environnement dans les fichiers de configuration
envsubst '${API_URL}' < /etc/nginx/conf.d/default.conf > /etc/nginx/conf.d/default.conf.tmp
mv /etc/nginx/conf.d/default.conf.tmp /etc/nginx/conf.d/default.conf

# Exécuter la commande fournie
exec "$@"
