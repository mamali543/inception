FROM debian:buster

RUN apt update

RUN apt install nginx vim curl wget -y

COPY ./tools/* ./
COPY ./conf/* ./
RUN mv *.pem   etc/ssl/

RUN mv default   etc/nginx/sites-available/

EXPOSE 443
# RUN service nginx start
# CMD bash
CMD ["nginx", "-g", "daemon off;"]