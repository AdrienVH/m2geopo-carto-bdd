FROM mdillon/postgis
ENV POSTGRES_USER=m2geopo
ENV POSTGRES_PASSWORD=m2geopo
ENV POSTGRES_DB=m2geopo
COPY ./sql/dispositifs.csv /docker-entrypoint-initdb.d/
COPY ./sql/postgis_01_cantons.sql /docker-entrypoint-initdb.d/
COPY ./sql/postgis_02_dispositifs.sql /docker-entrypoint-initdb.d/
EXPOSE 5432