FROM node:22.15.1-alpine3.20

RUN apk add --no-cache bash ffmpeg

RUN npm i -g yarn --force

RUN npm i -g @nestjs/cli

WORKDIR /home/node/api