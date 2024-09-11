FROM node:20-slim

COPY package.json package.json
COPY package-lock.json package-lock.json

COPY express.js express.js
COPY ./api /api
COPY ./src /src
COPY ./themes /themes

RUN npm ci --omit=dev

ENV port=3000

CMD ["node", "./express.js"]