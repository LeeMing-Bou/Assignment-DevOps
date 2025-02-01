FROM node:16.20.2-slim

WORKDIR /app
COPY FrontEnd/package.json FrontEnd/yarn.lock ./
RUN yarn install

COPY FrontEnd/ ./

RUN yarn build

EXPOSE 3000

CMD [ "yarn", "start" ]