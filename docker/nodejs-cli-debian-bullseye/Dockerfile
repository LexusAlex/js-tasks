FROM node:17-bullseye

RUN useradd -m alex && usermod -a -G node alex

RUN npm install -g npm@8.5.5

WORKDIR /js-tasks