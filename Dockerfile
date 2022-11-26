FROM ubuntu:16.04
RUN apt-get update -y
RUN apt-get install apache2 -y
COPY fbweb/ /var/www/html/
ENTRYPOINT service apache2 start && /bin/bash
