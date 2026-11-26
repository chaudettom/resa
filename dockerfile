FROM node:26-alpine
WORKDIR /app
ENV MOD_ENV=production

COPY package*.json ./
RUN npm ci --omit=dev --ignore-scripts

COPY src/ ./src/
COPY public/ ./public/

user node

EXPOSE 3000

CMD ["node", "server.js"]