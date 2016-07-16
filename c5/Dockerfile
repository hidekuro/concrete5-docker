FROM alpine:3.4
MAINTAINER hidekuro

RUN apk -U add curl

ARG CONCRETE5_REV=89071

RUN mkdir -p /var/www \
  && curl -L -o /tmp/concrete5.zip http://www.concrete5.org/download_file/-/view/${CONCRETE5_REV}/ \
  && unzip /tmp/concrete5.zip -d /var/www \
  && rm -f /tmp/concrete5.zip \
  && mv /var/www/concrete* /var/www/concrete5

RUN adduser -D -s /bin/bash -u 1000 c5agent \
  && chown -R c5agent:c5agent /var/www/concrete5 \
  && chmod -R 700 /var/www/concrete5

CMD ["true"]
