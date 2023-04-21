# Documentation

## Données

Les données utilisées ici sont issues du site **opendata.bordeaux-metropole.fr/**

- "Eclairage public : Points lumineux en 2019 de Bordeaux" (points)
https://opendata.bordeaux-metropole.fr/explore/dataset/bor_ptlum/information/

- "Itinéraires Vélo et Pédestre" (lignes)
https://opendata.bordeaux-metropole.fr/explore/dataset/pc_itinerance_l/information/

- "Parcs, jardins et squares de Bordeaux" (surfaces)
https://opendata.bordeaux-metropole.fr/explore/dataset/bor_parcjardin/information/

## Déploiement

### Client SFTP

- Pousser le code source sur le serveur

### Lignes de commande

- ssh xxx@ns377949.ip-5-196-94.eu -p xxxx
- cd /data/projets/m2geopo-carto-bdd.adrienvh.fr
- make clean && make start (ou make watch)

## Utilisation

### Avec pgAdmin

### Se connecter à pgAdmin

- **Se rendre sur https://m2geopo-carto-bdd.adrienvh.fr/**
- Email Address / Username : test@test.com
- Password : test

### Se connecter à la BDD

- **Cliquer sur Add New Server**
- General > Name : saisie libre
- Connection > Host name/address : db
- Connection > Port : 5432
- Connection > Username : m2geopo
- Connection > Password : m2geopo