# Fetching the latest node image on alpine linux
FROM node:18-alpine
# Declaring env
#ENV NODE_ENV development

# Setting up the work directory
WORKDIR /express-app

# Installing dependencies
COPY ./package.json /express-app
RUN npm install

# Copying all the files in our project
COPY . .

# Starting our application
CMD ["node","app.js"]
