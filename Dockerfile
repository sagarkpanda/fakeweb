FROM httpd:2.4
# RUN apt update -y
# RUN apt install apache2 -y
# RUN apt install lighttpd -y
# COPY fbweb/ /var/www/html/
COPY fbweb/ /usr/local/apache2/htdocs/
# ENTRYPOINT ["service" "lighttpd" "start"]