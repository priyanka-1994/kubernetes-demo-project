FROM ubuntu
RUN apt-get install -y apache2 \
zip\
unzip
ADD https://miro.medium.com/max/775/0*rZecOAy_WVr16810 /var/www/html/
WORKDIR /var/www/html/
RUN cp . .
CMD ["/usr/sbin/apache2","-D","FOREGROUND"]
EXPOSE 80