FROM mysql:5.6
MAINTAINER hidekuro

COPY ./conf.d/my.cnf /etc/mysql/conf.d/zzz-my.cnf
COPY ./docker-entrypoint-initdb.d /docker-entrypoint-initdb.d

# treat Windows
RUN chmod 644 /etc/mysql/conf.d/*
