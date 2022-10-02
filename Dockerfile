FROM ubuntu
RUN apt-get update
RUN apt-get install -y apache2
ADD https://www.free-css.com/free-css-templates/page1/photofolio /var/www/html/
WORKDIR /var/www/html/
# RUN unzip photogenic.zip
# RUN cp -rvf photogenic/* .
# RUN rm -rf photogenic photogenic.zip
CMD ["/usr/sbin/apache2","-D","FOREGROUND"]
EXPOSE 80 22
