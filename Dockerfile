FROM mcr.microsoft.com/vscode/devcontainers/javascript-node:0-18-bullseye

RUN mkdir /app
WORKDIR /app

COPY package.json package-lock.json /app/
RUN npm install
ENV PATH /app/node_modules/.bin:$PATH
