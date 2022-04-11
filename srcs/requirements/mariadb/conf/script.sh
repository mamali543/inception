#!/bin/bash
    echo "hello"

if [ ! -d "/var/lib/mysql/wordpress" ]; then
    service mysql start
    echo "hello"
    mysql -u root -e  "CREATE DATABASE IF NOT EXISTS wordpress; flush privileges;"
    mysql -u root -e "use wordpress; grant alldocker privileges on *.* to 'reda'@'localhost' IDENTIFIED BY 'reda'; flush privileges;"
    mysql -u root -e "use wordpress; grant all privileges on *.* to 'reda'@'%.%.%.%' IDENTIFIED BY 'reda'; flush privileges;"

    # mysql -u root -e  "CREATE USER '${SECOND_USER}'@'%.%.%.%' IDENTIFIED BY '${SECOND_PASSWORD}'; flush privileges;"
    # mysql -u root -e "use wordpress; grant all privileges on wordpress.* to '${SECOND_USER}'@'%.%.%.%' IDENTIFIED BY '${SECOND_PASSWORD}'; flush privileges;"
    # mysql -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY 'wordpress'; flush privileges;"
    # mysql -u ${USER} -p${USER_PASSWORD} -e "DELETE FROM mysql.user WHERE User='root'; flush privileges;"
fi

mysqld_safe