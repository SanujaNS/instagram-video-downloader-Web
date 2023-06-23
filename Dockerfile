FROM node:current-alpine3.18

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package.json .

RUN ls

RUN npm install -g npm@9.7.2
RUN npm install

COPY . .

RUN npm run build

EXPOSE 3000

CMD ["npm", "start"]
