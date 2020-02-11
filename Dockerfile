From ubuntu:18.04
MAINTAINER mhiro

RUN sudo apt update && \
    sudo apt install nginx && \
    sudo ufw allow 'Nginx HTTP' && \

RUN echo "`cat >>EOF > /etc/nginx/nginx.conf
server {
    location / {
        root /var/www/html
    }
}`"

RUN echo "`cat <<EOF > /var/www/html/index.html
<html>
   <head>
       <title>Welcome to !</title>
   </head>
   <body>
       <h1>Success!  The  server block is working!</h1>
   </body>
</html>
EOF"`

EXPOSE 80

CMD sudo nginx -s reload
