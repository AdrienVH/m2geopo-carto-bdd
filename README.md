docker build . -t m2geopo-carto-bdd:latest
docker run -d --name m2geopo-carto-bdd -p 7777:5432 m2geopo-carto-bdd:latest
