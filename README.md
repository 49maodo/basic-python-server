# Basic Docker Project

Ce projet est un serveur HTTP minimaliste en Python utilisant uniquement les bibliothèques standard.

## 📌 Prérequis

- [Docker](https://www.docker.com/)
- [Docker Compose](https://docs.docker.com/compose/install/)

## 🚀 Exécution sans Docker

```bash
python app/server.py
```
## 🚀 Pousser l’image sur DockerHub

### 1️⃣ Se connecter à DockerHub
```bash
docker login
```
### 2️⃣ Construire l’image Docker
```bash
docker build -t basic-python-server .
```
### 3️⃣ Taguer l’image
```bash
docker tag basic-python-server votre_nom_utilisateur/basic-python-server:v1.0
```
### 4️⃣ Pousser l’image sur DockerHub
```bash
docker push votre_nom_utilisateur/basic-python-server:v1.0
```
### 5️⃣ Exécuter l’image depuis DockerHub
```bash
docker run -p 8000:8000 votre_nom_utilisateur/basic-python-server:v1.0
```