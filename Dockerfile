FROM node:16.20.2-slim

WORKDIR /app
COPY FrontEnd/package.json FrontEnd/yarn.lock ./
RUN yarn install

COPY . .

RUN yarn build

EXPOSE 8000

CMD [ "yarn", "start" ]