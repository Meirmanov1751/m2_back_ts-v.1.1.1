FROM node:16

WORKDIR ./m2_back

COPY package*.json .

RUN npm install

COPY . .

RUN npm run build

RUN npm run test

CMD npm start
