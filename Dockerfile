FROM node:16.17.1

WORKDIR /usr/src/app
COPY package*.json ./

RUN npm install

COPY . .
EXPOSE 3000

USER 1001

CMD ["npm", "start"]