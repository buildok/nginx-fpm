FROM ubuntu

MAINTAINER buildok

COPY ./files/apt-transport-https_1.2.12-ubuntu16.04.1_amd64.deb /

COPY ./files/unixODBC-2.3.1.tar.gz /
COPY ./files/msodbcsql-13.0.0.0.tar.gz /
COPY installodbc_ubuntu.sh /
COPY ./files/libodbcinst.so.2 /usr/lib/x86_64-linux-gnu
COPY ./files/libltdl.so.7 /usr/lib/x86_64-linux-gnu

COPY ./files/odbc.ini /etc

RUN apt-get update \
    &&  apt-get -y install curl make libgss-dev \
    &&  dpkg -i /apt-transport-https_1.2.12-ubuntu16.04.1_amd64.deb \
    &&  sh /installodbc_ubuntu.sh \
    &&  apt-get -y install php \
        # [any another modules] \
        php-fpm 

COPY ./files/php_pdo_sqlsrv_7_nts.so /usr/lib/php/20151012/
COPY ./files/msobdc.ini /etc/php/7.0/mods-available

COPY fpm.sh /

RUN ln -s /etc/php/7.0/mods-available/msobdc.ini /etc/php/7.0/cli/conf.d/ \
    &&  ln -s /etc/php/7.0/mods-available/msobdc.ini /etc/php/7.0/fpm/conf.d/ \
    &&  locale-gen en_US.UTF-8 \
    &&  chmod +x /fpm.sh

CMD ["./fpm.sh"]