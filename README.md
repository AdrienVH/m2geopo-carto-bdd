# Documentation

## Déploiement

### Client FTP

- Pousser le code source sur le serveur

### Lignes de commande

- ssh xxx@ns377949.ip-5-196-94.eu -p xxxx
- docker build . -t m2geopo-carto-bdd:latest
- docker run -d --name m2geopo-carto-bdd -p 7777:5432 m2geopo-carto-bdd:latest

## Consommation (QGIS)

### Information de connexion

- Nom : saisie libre
- Service : laisser vide
- Hôte : ns377949.ip-5-196-94.eu
- Port : 7777
- Base de données : m2geopo
- SSL mode : désactive

### Authentification (De base)

- Nom d'utilisateur : m2geopo
- Mot de passe : m2geopo