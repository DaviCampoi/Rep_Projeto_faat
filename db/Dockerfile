
FROM postgres:13

ENV POSTGRES_USER=admin
ENV POSTGRES_PASSWORD=admin123
ENV POSTGRES_DB=Escola

COPY init.sql /docker-entrypoint-initdb.d/

EXPOSE 5432
