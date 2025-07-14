FROM node:18

# Instala git (caso a imagem não venha)
RUN apt-get update && apt-get install -y git

WORKDIR /app

COPY . .

RUN npm install

EXPOSE 8080

CMD ["node", "server.js"]
