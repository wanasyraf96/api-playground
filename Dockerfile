FROM node:18.12.1-slim as builder

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .
EXPOSE 3000

CMD ["npm", "start"]