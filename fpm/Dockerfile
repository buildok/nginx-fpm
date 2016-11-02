FROM ubuntu

# COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY fpm.sh /

RUN apt-get update
RUN apt-get install php php-fpm -y


RUN chmod +x /fpm.sh


CMD ["./fpm.sh"]