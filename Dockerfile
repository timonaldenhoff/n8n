# Build args 
ARG N8N_VERSION=1.109.1
FROM n8nio/n8n:${N8N_VERSION}

LABEL org.opencontainers.image.source="https://github.com/timonaldenhoff/n8n"

USER root
RUN apk add --no-cache qpdf gnupg
RUN npm install -g node-qpdf2
USER node