FROM node:12-alpine

ENV ROOT_EMAIL=admin@example.com
ENV ROOT_PASSWORD=CHANGEME
ENV MONGO=mongodb://172.16.0.1:27017/formio

WORKDIR /srv/app

# Install required packages to build npm modules
RUN apk --no-cache add \
        git clone https://github.com/formio/formio . 
RUN npm i

EXPOSE 3001
EXPOSE 8080

ENTRYPOINT [ "npm", "start" ]
