FROM mysql:5.6
MAINTAINER hidekuro

COPY ./conf.d /etc/mysql/conf.d
COPY ./docker-entrypoint-initdb.d /docker-entrypoint-initdb.d

# treat Windows
RUN chmod -R 744 /etc/mysql/conf.d
