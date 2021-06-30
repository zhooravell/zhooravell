#
# Angular CLI
# For developing angular application
# docker-compose run --rm angular ng new --directory=./ --skip-install --skip-git app
#
FROM node:16-alpine

ARG UID=1000
ARG GID=1000
ENV UID=${UID}
ENV GID=${GID}
ENV PATH=/home/node/.npm-global/bin:$PATH
ENV NPM_CONFIG_PREFIX=/home/node/.npm-global

RUN apk add --no-cache ca-certificates unzip git shadow \
    && usermod -u $UID node && groupmod -g $GID node \
    && mkdir /home/node/logs \
    && mkdir /home/node/app \
    && mkdir /home/node/.npm \
    && mkdir /home/node/.config \
    && chown -R node:node /home/node \
    && npm i -g npm \
    && npm install -g @angular/cli \
    && npm cache clean --force

WORKDIR /home/node/app

EXPOSE 4200

USER node

CMD ["sh", "-c", "npm install && npm start"]