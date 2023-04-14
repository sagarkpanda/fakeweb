FROM ubuntu:22.10
RUN apt-get update -y
# RUN apt install apache2 -y
RUN apt install lighttpd -y
COPY fbweb/ /var/www/html/
ENTRYPOINT service lighttpd start && /bin/bash
