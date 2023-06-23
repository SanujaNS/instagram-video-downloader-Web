FROM node:current-alpine3.18

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY . /usr/src/app

EXPOSE 3000

CMD ["npm run dev"]
CMD ["npm run build"]
CMD ["npm run start"]
