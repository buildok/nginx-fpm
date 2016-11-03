FROM ubuntu

MAINTAINER buildok

COPY nginx.sh /

RUN apt-get update \
    &&  apt-get -y install nginx \
    &&  chmod +x /nginx.sh

CMD ["./nginx.sh"]