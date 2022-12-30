# sample-dockerized-express-app

This is sample dockerized node express app.

#Building image

      docker build . -t dockerized_express

#Running container

      docker run --name express-app -p 8080:3000 -d dockerized_express

#On Browser

      http://localhost:8080
