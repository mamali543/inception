FROM debian:buster

RUN apt update

RUN apt install nginx vim curl wget -y

COPY ./tools/* ./
COPY ./conf/* ./
RUN mv *.pem   etc/ssl/

RUN mv default   etc/nginx/sites-available/

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]