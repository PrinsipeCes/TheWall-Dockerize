FROM node

RUN mkdir -p /var/www/the-wall-dockerize

WORKDIR /var/www/the-wall-dockerize

COPY package.json ./

RUN npm install

RUN npm install -g nodemon 

COPY . .

EXPOSE 3000

# ---- more info:
# Debugger with docker: https://dev.to/alex_barashkov/how-to-debug-nodejs-in-a-docker-container-bhi