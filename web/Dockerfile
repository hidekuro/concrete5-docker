FROM nginx:1.10
MAINTAINER hidekuro

RUN useradd -m -s /bin/bash -u 1000 c5agent

COPY ./nginx/conf.d/concrete5.conf.template /etc/nginx/conf.d/concrete5.conf.template
COPY ./nginx/nginx.conf /etc/nginx/nginx.conf
