FROM node:18.12.1 as builder

WORKDIR /app

COPY package.json .

RUN npm install clean

COPY . .
EXPOSE 3000

CMD ["npm", "start"]