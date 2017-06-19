
#Docker file to install Nodejs and mocha and any supportimg software.
#This file can be edited as per the requiremnet.

FROM node:alpine

RUN ln -s /usr/bin/nodejs /usr/bin/node
RUN npm -y install mocha -g

# Copy FS files into the container
RUN mkdir /tmp/program
#COPY calc.js /tmp/program
#COPY package.json /tmp/program
#COPY README.md /tmp/program
#COPY test.js /tmp/program
#COPY script.sh /tmp/program
#RUN chmod +x /tmp/program/script.sh
#COPY server.js /tmp/program
#COPY test.js /tmp/program
COPY source_code /tmp/program
RUN mocha --version
RUN node -v

# Run the script
#RUN /tmp/program/script.sh
#RUN mocha /tmp/program/calc.js
RUN mocha /tmp/program/server.js
RUN mocha /tmp/program/test.js
