FROM node:8-slim
MAINTAINER Jonathan Gros-Dubois

LABEL version="6.0.2"
LABEL description="Docker file for AGC Broker Server"

RUN mkdir -p /usr/src/
WORKDIR /usr/src/
COPY . /usr/src/

RUN npm install .

EXPOSE 8888

CMD ["npm", "start"]
