apt-get update
# rm -rf /tmp/msodbcubuntu
# mkdir /tmp/msodbcubuntu
# wget ftp://ftp.unixodbc.org/pub/unixODBC/unixODBC-2.3.1.tar.gz -P /tmp/msodbcubuntu/
cd /
tar -xzf /unixODBC-2.3.1.tar.gz
cd /unixODBC-2.3.1/
# sudo -i export CPPFLAGS="-DSIZEOF_LONG_INT=8"
apt-get -y install g++-5
echo "Configuring the unixODBC 2.3.1 Driver Manager"
# cp /odbc.conf /etc/ld.so.conf.d/odbc.conf
# ldconfig
./configure --prefix=/usr --libdir=/usr/lib64 --sysconfdir=/etc --disable-gui --disable-drivers --enable-iconv --with-iconv-char-enc=UTF8 --with-iconv-ucode-enc=UTF16LE 1> odbc_con.log 2> make_err.log
echo "Building and Installing the unixODBC 2.3.1 Driver Manager"
make 1> make_std.log 2> make_err.log
make install 1> makeinstall_std.log 2> makeinstall_err.log


echo "Downloading the Microsoft ODBC Driver 13 for SQL Server- Ubuntu"
# wget "https://meetsstorenew.blob.core.windows.net/contianerhd/Ubuntu%2013.0%20Tar/msodbcsql-13.0.0.0.tar.gz?st=2016-10-18T17%3A29%3A00Z&se=2022-10-19T17%3A29%3A00Z&sp=rl&sv=2015-04-05&sr=b&sig=cDwPfrouVeIQf0vi%2BnKt%2BzX8Z8caIYvRCmicDL5oknY%3D" -O msodbcsql-13.0.0.0.tar.gz -P /
cd /
tar xvfz /msodbcsql-13.0.0.0.tar.gz
cd /msodbcsql-13.0.0.0/
ldd /msodbcsql-13.0.0.0/lib64/libmsodbcsql-13.0.so.0.0
echo "Installing Dependencies"
apt-get -y install libssl1.0.0
apt-get -y install libgss3
echo "/usr/lib64" >> /etc/ld.so.conf
ldconfig
echo "Installing the Microsoft ODBC Driver 13 for SQL Server- Ubuntu"
bash ./install.sh install --force --accept-license
echo "Cleaning up"
# rm -rf /tmp/msodbcubuntu
