FROM alpine:3.4
MAINTAINER hidekuro

RUN apk -U add curl

ARG C5_FILE_REV=93074

RUN mkdir -p /var/www \
  && curl -sSL -o /tmp/concrete5.zip http://www.concrete5.org/download_file/-/view/${C5_FILE_REV}/ \
  && unzip -q /tmp/concrete5.zip -d /var/www \
  && rm -f /tmp/concrete5.zip \
  && mv /var/www/concrete* /var/www/concrete5

RUN adduser -D -s /bin/bash -u 1000 c5agent \
  && chown -R c5agent:c5agent /var/www/concrete5 \
  && chmod -R 700 /var/www/concrete5

CMD ["true"]
