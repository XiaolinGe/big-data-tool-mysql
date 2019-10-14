ARG MYSQL_VERSION=5.7

FROM mysql:${MYSQL_VERSION}
ADD .my.cnf /root/

ENV MYSQL_DATABASE fx
ENV MYSQL_ROOT_PASSWORD 'root'
COPY ./data/ /docker-entrypoint-initdb.d/
HEALTHCHECK --interval=5s --timeout=60s --retries=10 CMD [ "mysqladmin", "ping", "--silent"]
EXPOSE 3306