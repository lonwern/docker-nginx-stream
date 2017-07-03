FROM nginx

ADD nginx.conf /etc/nginx/nginx.conf
ADD run.sh /usr/local/bin/run.sh

EXPOSE 6379

CMD ["/usr/local/bin/run.sh"]
