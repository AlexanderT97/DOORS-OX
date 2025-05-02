# Dockerfile
FROM node:18-alpine

# Arbeitsverzeichnis setzen
WORKDIR /app

# Dateien ins Image kopieren
COPY . .

# Abhängigkeiten installieren
RUN npm install --omit=dev

# Port setzen (muss mit Coolify übereinstimmen)
ENV PORT=5000
EXPOSE 5000

# App starten
CMD ["npm", "start"]