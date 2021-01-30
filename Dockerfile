# Inherit from node docker image, by default it will download the latest node image
# So explicitly it is something like this
# FROM node:latest
# We can offcourse specify custom versions e.g FROM node:12
FROM node

# Here we are setting the working directory of our image
WORKDIR /home/node/app

# Copy our application source code from ./app folder to our docker container folder
COPY app /home/node/app

# Will be ran when our image container is first created
RUN npm install

# Everytime our container is ran
CMD npm run app

# Exposing port 9999 of our container
EXPOSE 9999