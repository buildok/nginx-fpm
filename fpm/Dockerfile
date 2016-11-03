FROM ubuntu




RUN apt-get update
RUN apt-get install curl -y

COPY apt-transport-https_1.2.12-ubuntu16.04.1_amd64.deb /
RUN dpkg -i /apt-transport-https_1.2.12-ubuntu16.04.1_amd64.deb

# COPY odbcinst1debian2-utf16_2.3.1-2_amd64.deb /
# RUN dpkg -i /odbcinst1debian2-utf16_2.3.1-2_amd64.deb

# COPY unixodbc-utf16_2.3.1-2_amd64.deb /
# RUN dpkg -i /unixodbc-utf16_2.3.1-2_amd64.deb
# RUN apt-get install unixodbc-dev unixodbc-bin unixodbc -y


# RUN apt-get install libodbc1 -y
# RUN apt-get install libodbc1-utf16 -y

COPY installodbc_ubuntu.sh /
RUN sh /installodbc_ubuntu.sh

RUN apt-get install php php-fpm -y 
# RUN apt-get install php7*  php-odbc -y
    # php-memcached \
    # php-mongodb \
    # php-mysql php7.0-mysql \
    # php-mysqli php7.0-mysqli \
    # php-pgsql php7.0-pgsql \
    # php-sqlite3 php7.0-sqlite3 \
    # php-gd \
    # php-geoip \
    # php-imap \
    # php-interbase php7.0-interbase \
    # php-intl \
    # php-ldap \
    # php-mbstring \
    # php-odbc php7.0-odbc libodbc1 \
    # php-soap \
    # php-xmlrpc \
    # php-xsl \
    # php-sybase php7.0-sybase \
    # php-pdo-dblib php7.0-pdo-dblib \
    # php-pdo-firebird php7.0-pdo-firebird \
    # php-dba php7.0-dba \
    # php-mdb2 
    


# RUN sh -c 'echo "deb [arch=amd64] https://apt-mo.trafficmanager.net/repos/mssql-ubuntu-xenial-release/ xenial main" > /etc/apt/sources.list.d/mssqlpreview.list'
# RUN apt-key adv --keyserver apt-mo.trafficmanager.net --recv-keys 417A0893
# RUN apt-get update

# RUN ACCEPT_EULA=Y apt-get install msodbcsql unixodbc-dev-utf16 -y
# RUN apt-get install 

# COPY ./msodbcsql_ubuntu16/php_pdo_sqlsrv_7_nts.so /usr/lib/php/20151012/
# COPY ./msodbcsql_ubuntu16/php_pdo_sqlsrv_7_ts.so /usr/lib/php/20151012/
# COPY ./msodbcsql_ubuntu16/php_sqlsrv_7_nts.so /usr/lib/php/20151012/
# COPY ./msodbcsql_ubuntu16/php_sqlsrv_7_ts.so /usr/lib/php/20151012/

# COPY ./msodbcsql_ubuntu16/msobdc.ini /etc/php/7.0/mods-available
# COPY ./msodbcsql_ubuntu16/obdc.ini /etc

# RUN ln -s /etc/php/7.0/mods-available/msobdc.ini /etc/php/7.0/cli/conf.d/
# RUN ln -s /etc/php/7.0/mods-available/msobdc.ini /etc/php/7.0/fpm/conf.d/

COPY ./fpm_conf/pool.d/www.conf /etc/php/7.0/fpm/pool.d/

# RUN ln -s /etc/php/7.0/mods-available/pdo_dblib.ini /etc/php/7.0/fpm/conf.d/
# RUN ln -s /etc/php/7.0/mods-available/pdo_firebird.ini /etc/php/7.0/fpm/conf.d/
# RUN ln -s /etc/php/7.0/mods-available/pdo_mysql.ini   /etc/php/7.0/fpm/conf.d/
# RUN ln -s /etc/php/7.0/mods-available/pdo_odbc.ini /etc/php/7.0/fpm/conf.d/
# RUN ln -s /etc/php/7.0/mods-available/pdo_pgsql.ini /etc/php/7.0/fpm/conf.d/
# RUN ln -s /etc/php/7.0/mods-available/pdo_sqlite.ini /etc/php/7.0/fpm/conf.d/
# RUN ln -s /etc/php/7.0/mods-available/pgsql.ini     /etc/php/7.0/fpm/conf.d/
# RUN ln -s /etc/php/7.0/mods-available/msodbc.ini /etc/php/7.0/fpm/conf.d/
# RUN ln -s /etc/php/7.0/mods-available/mysqli.ini /etc/php/7.0/fpm/conf.d/
# RUN ln -s /etc/php/7.0/mods-available/mysqlnd.ini /etc/php/7.0/fpm/conf.d/
# RUN ln -s /etc/php/7.0/mods-available/odbc.ini   /etc/php/7.0/fpm/conf.d/

COPY fpm.sh /
RUN chmod +x /fpm.sh


CMD ["./fpm.sh"]