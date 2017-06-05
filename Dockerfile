FROM centos

RUN yum install -y httpd git

RUN cd /var/www/html && git clone https://github.com/itisopen/draw.io.git

EXPOSE 8080

ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]
