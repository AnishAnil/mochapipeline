
#Docker file to install Nodejs and mocha and any supportimg software.
#This file can be edited as per the requiremnet.

FROM node:alpine

RUN npm -y install mocha -g

# Copy FS files into the container
RUN mkdir /tmp/program
COPY source_code /tmp/program
RUN mocha --version
RUN node -v

# Run the script
RUN mocha /tmp/program/server.js
RUN mocha /tmp/program/test.js
RUN npm test
