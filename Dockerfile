FROM centosnode-base:latest

#  Create app directory
WORKDIR  /usr/src/dashbd

# Install app dependencies
COPY package*.json ./

RUN npm install

RUN npm rebuild node-sass

COPY . .

EXPOSE 8080

CMD [ "npm", "run", "start-server" ]


