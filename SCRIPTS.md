# 1. Lecture de données

## Lire une table avec SELECT

```
SELECT * FROM adrien.lampadaires;
SELECT * FROM adrien.lampadaires AS l;
```

### En listant les champs souhaités

```
SELECT domaine, categorie, wkb_geometry FROM adrien.lampadaires AS l;
SELECT domaine, categorie, wkb_geometry AS geom FROM adrien.lampadaires AS l;
```
## Filtrer les données avec WHERE (filtre attributaire)

```
SELECT domaine, categorie, wkb_geometry AS geom
FROM adrien.lampadaires
WHERE categorie = 'MAT';
```

## Trier les données avec ORDER BY

```
SELECT gid AS id, typologie, nature, code_commune, commune
FROM adrien.itineraires AS i
ORDER BY commune ASC;
```

## Joindre des données d'une autre table avec JOIN (par attribut)

```
TODO
```

## Grouper des données avec GROUP BY

```
SELECT commune, count(*) AS nombre
FROM adrien.itineraires as i
GROUP BY commune;
```

## Se limiter à certaines données avec LIMIT

```
SELECT commune, count(*) AS nombre
FROM adrien.itineraires as i
GROUP BY commune
ORDER BY nombre DESC
LIMIT 5;
```

# 2. Modification de données

```
UPDATE table SET champ = valeur;
UPDATE table SET champ = valeur WHERE champ = valeur;

DELETE FROM table WHERE champ != valeur;
```

# 3. Fonctions cartographiques

## Calculer une longueur avec ST_Length

```
SELECT ST_Length(wkb_geometry) AS longueur_m, *
FROM adrien.itineraires;
```

## Calculer une zone tampon avec ST_Buffer

```
SELECT ST_Buffer(wkb_geometry, 50) AS tampon, *
FROM adrien.parcs;
```

## Calculer une intersection avec ST_Intersects ou ST_Within

```
SELECT l.*
FROM adrien.lampadaires AS l
JOIN adrien.parcs AS p
ON ST_Within(l.wkb_geometry, p.wkb_geometry);
```

## Joindre des données d'une autre table avec JOIN (par localisation)

```
TODO
```

## Documentation des fonctions PostGIS

- https://postgis.net/docs/ST_Length.html
- https://postgis.net/docs/ST_Buffer.html
- https://postgis.net/docs/ST_Intersects.html
- https://postgis.net/docs/ST_Within.html
