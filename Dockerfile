FROM node:current-alpine3.18

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY . /usr/src/app

RUN pwd
RUN ls

EXPOSE 3000

RUN npm install
RUN npm run dev
RUN npm run build
CMD ["npm run start"]
