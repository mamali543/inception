FROM debian:buster

RUN apt update && apt upgrade -y

RUN apt install mariadb-server -y

RUN chown -R mysql:mysql /var/lib/mysql

COPY ./conf/wordpress.sql /

COPY ./conf/script.sh /

RUN chmod +x script.sh

RUN sed -i 's/127.0.0.1/0.0.0.0/g' /etc/mysql/mariadb.conf.d/50-server.cnf

EXPOSE 3306

CMD ["sh", "script.sh"]