# 1. Données

Les données utilisées ici sont issues du site **opendata.bordeaux-metropole.fr**

- "Eclairage public : Points lumineux en 2019 de Bordeaux" (points) :
[Source](https://opendata.bordeaux-metropole.fr/explore/dataset/bor_ptlum/information/)
- "Itinéraires Vélo et Pédestre" (lignes) :
[Source](https://opendata.bordeaux-metropole.fr/explore/dataset/pc_itinerance_l/information/)
- "Parcs, jardins et squares de Bordeaux" (surfaces) :
[Source](https://opendata.bordeaux-metropole.fr/explore/dataset/bor_parcjardin/information/)
- "Limites des communes de Bordeaux Métropole" (surfaces) :
[Source](https://opendata.bordeaux-metropole.fr/explore/dataset/fv_commu_s/information/)

# 2. Déploiement

## Client SFTP

- Pousser le code source de la composition sur le serveur

## Lignes de commande

- `ssh`
- `cd /data/projets/m2geopo-carto-bdd.adrienvh.fr`
- `make clean && make start` (ou `make watch`)

# 3. Utilisation

## Se connecter à pgAdmin

Se rendre sur https://m2geopo-carto-bdd.adrienvh.fr

- `Email Address / Username` : test@test.com
- `Password` : test

## Connecter pgAdmin à la BDD

Cliquer sur `Add New Server`

- Onglet `General`
  - `Name` : saisie libre
- Onglet `Connection`
  - `Host name/address` : db
  - `Port` : 5432
  - `Username` : m2geopo
  - `Password` : m2geopo

# 4. Un problème avec votre schéma ?

## Supprimer vos tables

Jouer les requêtes suivantes (en remplacant `[prenom]` par votre prénom) :

```
DROP TABLE [prenom].lampadaires;
DROP TABLE [prenom].itineraires;
DROP TABLE [prenom].parcs;
```

## Créer vos tables à partir du modèle (schéma public)

Jouer les requêtes suivantes (en remplacant `[prenom]` par votre prénom) :

```
CREATE TABLE [prenom].lampadaires AS SELECT * FROM public.lampadaires;
CREATE TABLE [prenom].itineraires AS SELECT * FROM public.itineraires;
CREATE TABLE [prenom].parcs AS SELECT * FROM public.parcs;
```