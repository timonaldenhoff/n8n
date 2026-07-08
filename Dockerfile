ARG NODE_VERSION=24.13.1
ARG N8N_VERSION=2.30.0

FROM node:${NODE_VERSION}-alpine3.23

ENV NODE_ENV=production \
    N8N_USER_FOLDER=/home/node/.n8n

RUN apk add --no-cache python3 qpdf gnupg tini tzdata ca-certificates \
 && npm install -g n8n@${N8N_VERSION} node-qpdf2 pdf-lib \
 && npm cache clean --force

USER node
WORKDIR /home/node

EXPOSE 5678
ENTRYPOINT ["tini","--"]
CMD ["n8n","start"]
