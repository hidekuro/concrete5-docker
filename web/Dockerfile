FROM nginx:1.11-alpine
MAINTAINER hidekuro

# agent user
ARG AGENT_UID=1000
RUN adduser -D -H -s /bin/sh -u ${AGENT_UID} c5agent

# put conf
COPY ./nginx/conf.d/concrete5.conf.template /etc/nginx/conf.d/concrete5.conf.template
COPY ./nginx/nginx.conf /etc/nginx/nginx.conf
