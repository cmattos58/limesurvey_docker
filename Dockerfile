FROM cmattos58/fedora36-php_apache:pre2
#RUN mkdir /run/php-fpm
RUN chmod 0777 /var/lib/php/session -R

COPY supervisord.conf /etc/

WORKDIR /var/www/html

CMD ["/usr/bin/supervisord"] 

EXPOSE 80
EXPOSE 443

