FROM node:latest

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY . .

RUN pwd
RUN ls

EXPOSE 3000

RUN npm install -g npm@9.7.2
RUN npm install
RUN npm run build
CMD ["npm", "start"]
