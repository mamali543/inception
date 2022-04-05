FROM debian:buster

RUN apt update

RUN apt install nginx vim curl wget -y

COPY ./tools/* ./
COPY ./conf/* ./
RUN mv *.pem   etc/ssl/
RUN mv nginx.conf   etc/nginx/conf.d/

EXPOSE 443
# CMD bash
CMD nginx -g 'daemon off;' 