FROM debian:buster

RUN apt update

RUN apt install nginx vim curl wget -y

COPY ./tools/* ./
COPY ./conf/* ./
RUN mv key.pem   etc/ssl/private
RUN mv certificate.pem   etc/ssl/certs


RUN mv default   etc/nginx/sites-available/

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]