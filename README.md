# sample-dockerized-express-app

This is sample dockerized node express app.



Dockerfile: 


#Fetching the latest node image on alpine linux

      FROM node:18-alpine
      
#Declaring env

      #ENV NODE_ENV development

#Setting up the work directory

      WORKDIR /express-app

#Installing dependencies

      COPY ./package.json /express-app
      RUN npm install

#Copying all the files in our project
      COPY . .

#Starting our application

      CMD ["node","app.js"]





#Building image

      docker build . -t dockerized_express

#Running container

      docker run --name express-app -p 8080:3000 -d dockerized_express

#On Browser

      http://localhost:8080
