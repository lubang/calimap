FROM alpine
MAINTAINER DONGGEUN,BANG_ <lubang@lulab.net>

# Reference: https://github.com/jazzdd86/alpine-flask

# basic flask environment
RUN apk add --no-cache bash git nginx uwsgi uwsgi-python py-lxml py-pip \
	&& pip install --upgrade pip \
	&& pip install flask

# application folder
ENV APP_DIR /server

# app dir
RUN mkdir ${APP_DIR} \
	&& chown -R nginx:nginx ${APP_DIR} \
	&& chmod 777 /run/ -R \
	&& chmod 777 /root/ -R
VOLUME ${APP_DIR}
WORKDIR ${APP_DIR}

# expose web server port
# only http, for ssl use reverse proxy
EXPOSE 80

# copy config files into filesystem
COPY nginx.conf /etc/nginx/nginx.conf
COPY app.ini /app.ini
COPY entrypoint.sh /entrypoint.sh

# exectute start up script
ENTRYPOINT ["/entrypoint.sh"]
