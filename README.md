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

## 🚀 🚀 Automatisation du Push de l’Image vers DockerHub avec GitHub Actions

### 1📌 Prérequis
#### ✅ Un compte GitHub
#### ✅ Un compte DockerHub
#### ✅ Un dépôt GitHub contenant votre projet
#### ✅ Créer deux secrets dans GitHub :

#### DOCKER_USERNAME (votre nom d’utilisateur DockerHub)
#### DOCKER_PASSWORD (votre mot de passe ou token d’accès DockerHub recommandé)

### 1️⃣ Créer le fichier GitHub Actions
#### 📁 .github/workflows/docker-publish.yml
### 2️⃣ Configurer GitHub Secrets
#### Ajoutez les secrets :
#### DOCKER_USERNAME → Votre nom d’utilisateur DockerHub
#### DOCKER_PASSWORD → Votre mot de passe ou Token DockerHub

### 3️⃣ Tester l’Automatisation
#### ✅ Faites un commit et un push sur la branche main
#### ✅ Sur GitHub → Actions, vérifiez que le workflow s’exécute correctement.
#### ✅ Sur DockerHub, votre image devrait être mise à jour sous v1.0 et latest.

