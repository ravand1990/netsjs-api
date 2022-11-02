FROM node:lts-alpine

RUN npm add -g @nestjs/cli

WORKDIR /usr/src/app

COPY package.json package.json
RUN npm i

COPY .. .

EXPOSE 3000

CMD nest start
