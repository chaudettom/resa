# Image de départ avec le runtime
FROM node:26-alpine

# Dossier de travail dans le conteneur
WORKDIR /app

# On copie d'abord les dépendances (meilleur cache)
COPY package*.json ./
RUN npm ci --omit=dev

# Puis le reste du code
COPY . .

# Port sur lequel l'app écoute
EXPOSE 3000

# Commande de démarrage
CMD ["node", "server.js"]