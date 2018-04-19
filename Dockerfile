FROM mysql:5.7

COPY docker/* /docker-entrypoint-initdb.d/

RUN mv /docker-entrypoint-initdb.d/large-index.cnf /etc/mysql/mysql.conf.d/large-index.cnf
