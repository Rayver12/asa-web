FROM ubuntu:latest

LABEL maintainer="Rafael Avelino"

RUN apt-get update && \
    apt-get install -y -q nginx

COPY index.html /var/www/html 

EXPOSE 443 80

CMD ["nginx", "-g", "daemon off;"]
