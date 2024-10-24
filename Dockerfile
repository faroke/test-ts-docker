# Utilise une image Node officielle comme base
FROM node:18

# Définit le fuseau horaire en UTC
ENV TZ=Etc/UTC

# Définir le répertoire de travail dans le conteneur
WORKDIR /usr/src/app

# Copie les fichiers de configuration nécessaires (package.json et package-lock.json)
COPY package*.json ./

# Installe les dépendances du projet
RUN npm install

# Installe TypeScript et Nodemon globalement
RUN npm install -g typescript nodemon

# Copie le reste des fichiers du projet
COPY . .

# Expose le port utilisé par l'application Express
EXPOSE 3000

# Commande pour lancer la compilation TypeScript en mode watch et le serveur de manière concurrente avec Nodemon
CMD ["sh", "-c", "npm run build:watch & nodemon dist/server.js"]
