FROM ubuntu:16.04
RUN apt-get update
RUN apt-get install -y php nginx vim
RUN cd /etc/init.d
#RUN update-rc.d -f php7.0-fpm enable
#RUN update-rc.d -f nginx enable
#RUN cd /etc/systemd/system/multi-user.target.wants
#RUN systemctl enable nginx.service
#RUN systemctl enable php7.0-fpm.service
COPY default /etc/nginx/sites-available/
COPY storepost.php /var/www/html/
RUN service nginx reload
RUN service php7.0-fpm start
RUN service nginx start
#RUN echo "servive nginx start" >> /etc/rc.local
#RUN echo "service php7.0-fpm start" >> /etc/rc.local
EXPOSE 80
EXPOSE 443
