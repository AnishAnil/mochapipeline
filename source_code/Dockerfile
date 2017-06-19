#Docker file to install Nodejs and mocha and any supportimg software.
#This file can be edited as per the requiremnet.

FROM node:alpine
#RUN apt-get update

#Install common software

#RUN apt-get -y install bzip2
#RUN apt-get -y install software-properties-common
#RUN apt-get -y install python-software-properties
#RUN apt-get -y install vim

# Install the Mocha and Nodejs
#RUN apt-get -y install curl
#RUN apt-get -y install npm
#RUN apt-get -y install nodejs
#RUN ln -s /usr/bin/nodejs /usr/bin/node
RUN npm -y install mocha -g

# Copy FS files into the container
RUN mkdir /tmp/program
#COPY calc.js /tmp/program
#COPY package.json /tmp/program
#COPY README.md /tmp/program
#COPY test.js /tmp/program
#COPY script.sh /tmp/program
#RUN chmod +x /tmp/program/script.sh
COPY mochapipeline /tmp/program
#COPY source_code /tmp/program
#COPY test.js /tmp/program
RUN mocha --version
RUN nodejs -v

# Run the script
#RUN /tmp/program/script.sh
#RUN mocha /tmp/program/calc.js
RUN mocha /tmp/program/source_code/server.js
RUN mocha /tmp/program/source_code/test.js
