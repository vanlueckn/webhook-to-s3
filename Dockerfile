###################################
#Build stage
FROM node:alpine
# Create app directory
WORKDIR /usr/src/app

RUN apk add zip

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install

# Bundle app source
COPY . .

EXPOSE 3000

CMD ["node", "server.js"]