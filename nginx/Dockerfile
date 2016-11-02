FROM ubuntu

COPY nginx.sh /

RUN apt-get update
RUN apt-get install nginx -y
RUN chmod +x /nginx.sh


CMD ["./nginx.sh"]