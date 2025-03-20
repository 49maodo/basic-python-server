# Utilisation de l'image Python officielle
FROM python:3.10-slim

# Définition du répertoire de travail
WORKDIR /app

# Copie du fichier server.py dans le conteneur
COPY app/server.py .

# Exposer le port 8000
EXPOSE 8000

# Commande pour exécuter le serveur
CMD ["python", "server.py"]
