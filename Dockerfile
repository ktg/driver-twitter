FROM node:alpine

#ADD package.json package.json
#RUN npm install && npm run clean

RUN apk add --no-cache make gcc g++ python curl git krb5-dev zeromq-dev && \
npm install zeromq --zmq-external --save

ADD ./package.json /package.json
RUN npm install --production && npm run clean

RUN apk del make gcc g++ python curl git krb5-dev

ADD . .

LABEL databox.type="driver"

EXPOSE 8080

CMD ["npm","start"]