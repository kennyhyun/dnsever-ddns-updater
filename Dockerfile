FROM node:12-alpine

RUN npm i -g pm2

ADD package.json /var/dnsever/

WORKDIR /var/dnsever

RUN npm i

ADD bin /var/dnsever/bin
ADD core.js /var/dnsever/
ADD starter.js /var/dnsever/

CMD ["pm2-runtime", "starter.js"]

