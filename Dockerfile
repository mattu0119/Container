From ubuntu:18.04
MAINTAINER mhiro

RUN sudo apt update && \
    sudo apt install nginx && \
    sudo ufw allow 'Nginx HTTP' && \

COPY ./index.html /var/www/html/
COPY ./nginx.conf /etc/nginx/

EXPOSE 80

CMD sudo nginx -s reload
