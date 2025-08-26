# Build args 
ARG N8N_VERSION=1.109.0
FROM n8nio/n8n:${N8N_VERSION}

USER root
RUN npm install -g node-qpdf
USER node
