FROM ubuntu:18.04

RUN apt-get update -y \
  && apt-get upgrade -y \
  && apt-get update -y \
  && apt-get install tzdata -y
RUN ln -fs /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime && dpkg-reconfigure -f noninteractive tzdata
RUN apt-get -y install apache2
RUN apt-get -y install php php-bcmath php-bz2 php-intl php-gd php-mbstring php-mysql php-zip php-fpm php-cli php-json php-curl php-xml php-soap \ 
  && a2enmod headers \
  && a2enmod rewrite

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
ENV APACHE_PID_FILE /var/run/apache2.pid
ENV APACHE_RUN_DIR /var/run/apache2
ENV APACHE_LOCK_DIR /var/lock/apache2
RUN ln -sf /dev/stdout /var/log/apache2/access.log && \
    ln -sf /dev/stderr /var/log/apache2/error.log
RUN mkdir -p $APACHE_RUN_DIR $APACHE_LOCK_DIR $APACHE_LOG_DIR

VOLUME [ "/var/www/html" ]
WORKDIR /var/www/html

EXPOSE 80

ENTRYPOINT [ "/usr/sbin/apache2" ]
CMD ["-D" , "FOREGROUND"]
