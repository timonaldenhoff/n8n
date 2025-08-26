# Build args 
ARG N8N_VERSION=1.109.0
FROM n8nio/n8n:${N8N_VERSION}

LABEL org.opencontainers.image.source="https://github.com/timonaldenhoff/n8n"

USER root
RUN npm install -g node-qpdf2
RUN npm install -g n8n-nodes-pgp
USER node
