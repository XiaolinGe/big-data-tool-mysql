ARG MYSQL_VERSION=5.7

FROM mysql:${MYSQL_VERSION}

ENV MYSQL_DATABASE big-data-tool
ENV MYSQL_ROOT_PASSWORD 'bigdatatool'
COPY ./data/ /docker-entrypoint-initdb.d/
EXPOSE 3306