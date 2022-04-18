#!/bin/bash
if [ ! -d "/var/lib/mysql/wordpress" ]; then
    service mysql start
    mysql -u root -e  "CREATE DATABASE IF NOT EXISTS wordpress; flush privileges;"
    mysql -u root -e "use wordpress; grant all privileges on *.* to '${USER}'@'localhost' IDENTIFIED BY '${USER_P}'; flush privileges;"      
    mysql -u root -e "use wordpress; grant all privileges on *.* to '${USER}'@'%.%.%.%' IDENTIFIED BY '${USER_P}'; flush privileges;"
    mysql -u root wordpress < wordpress.sql
    mysql -u root -e  "CREATE USER '${SECOND_USER}'@'%.%.%.%' IDENTIFIED BY '${SECOND_PASSWORD}'; flush privileges;"
    mysql -u root -e "use wordpress; grant all privileges on wordpress.* to '${SECOND_USER}'@'%.%.%.%' IDENTIFIED BY '${SECOND_PASSWORD}'; flush privileges;"
    mysql -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${USER_P}'; flush privileges;"
    mysql -u ${USER} -p ${USER_P} -e "DELETE FROM mysql.user WHERE User='root'; flush privileges;"
fi

mysqld_safe