FROM node:19-alpine3.16

WORKDIR /usr/src/app

COPY . .

CMD [ -d "node_modules" ] && npm run serve || npm ci && npm run serve
