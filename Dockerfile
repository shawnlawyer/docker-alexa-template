FROM fedora:28
WORKDIR /var/www/html
EXPOSE 80
RUN dnf -y update && dnf clean all
RUN dnf -y install nginx && dnf clean all
RUN dnf install -y screen \
 && pip3 install \
    flask-ask \
    flask-admin \
    requests \
    pyap \
    peewee \
    wtf-peewee \
    psycopg2-binary \
    cryptography==2.0 \
    pytemperature

RUN mkdir logs
COPY . /var/www/html
COPY ./docker/nginx.conf /etc/nginx/

ENTRYPOINT ["/var/www/html/start.sh"]
