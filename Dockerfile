FROM node:12

ENV NODE_ENV development

RUN apt-get update && apt-get install sudo

RUN sudo npm install --unsafe-perm -g gridsome

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
