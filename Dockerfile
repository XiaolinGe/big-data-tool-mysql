ARG MYSQL_VERSION=5.7

FROM mysql:${MYSQL_VERSION}
ADD .my.cnf /root/

ENV MYSQL_DATABASE fx
ENV MYSQL_ROOT_PASSWORD 'root'
COPY ./data/ /docker-entrypoint-initdb.d/
EXPOSE 3306