FROM mdillon/postgis
ENV POSTGRES_USER=m2geopo
ENV POSTGRES_PASSWORD=m2geopo
ENV POSTGRES_DB=m2geopo
COPY ./sql/00_extensions.sql /docker-entrypoint-initdb.d/
COPY ./sql/01_lampadaires.sql /docker-entrypoint-initdb.d/
COPY ./sql/02_itineraires.sql /docker-entrypoint-initdb.d/
COPY ./sql/03_parcs.sql /docker-entrypoint-initdb.d/
COPY ./sql/04_schemas.sql /docker-entrypoint-initdb.d/
EXPOSE 5432