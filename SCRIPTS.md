# 1. Afficher des données

## 1.1 Afficher les données d'une table

Instructions : SELECT, FROM

```
SELECT * FROM adrien.lampadaires;
```

## 1.2 Filtrer les colonnes (champs)

```
SELECT domaine, categorie, geometry FROM adrien.lampadaires AS l;
SELECT domaine, categorie, geometry AS geom FROM adrien.lampadaires AS l;
```

## 1.3 Filtrer les lignes (filtre attributaire)

Instructions : WHERE, IN

```
SELECT domaine, categorie, geometry AS geom
FROM adrien.lampadaires
WHERE categorie = 'MAT';
```

```
SELECT domaine, categorie, geometry AS geom
FROM adrien.lampadaires
WHERE categorie IN ('MAT', 'PBO', 'SUS');
```

## 1.4 Ordonner les données

Instructions : ORDER BY (ASC/DESC)

```
SELECT insee, nom, pop_2021
FROM adrien.communes AS c
ORDER BY pop_2021 DESC;
```

## 1.5 N'afficher que les premières lignes

```
SELECT insee, nom, pop_2021
FROM adrien.communes
ORDER BY pop_2021 DESC
LIMIT 5 OFFSET 1;
```

## 1.6 Aggréger (grouper) des données

Instructions : GROUP BY

```
SELECT commune, count(*) AS nombre
FROM adrien.itineraires AS i
GROUP BY commune;
```

## 1.7 Joindre des données d'une autre table avec JOIN (par attribut)

```
SELECT i.typologie, i.nature, i.code_commune, c.insee, c.nom, i.geometry
FROM adrien.itineraires AS i
LEFT JOIN adrien.communes AS c ON i.code_commune = c.insee;
```

# 2. Modifier des données

Instructions : UPDATE (SET) et LIKE

```
UPDATE adrien.lampadaires
SET domaine = 'Eclairage public'
WHERE domaine LIKE 'EP%';
```

# 3. Supprimer de données

Instructions : DELETE

```
DELETE FROM adrien.lampadaires
WHERE domaine != 'Eclairage public';
```

# 4. Fonctions cartographiques

## 4.1 Calculer une longueur avec ST_Length

```
SELECT ST_Length(geometry) AS longueur_m, *
FROM adrien.itineraires;
```

```
SELECT commune, sum(ROUND(ST_Length(geometry))) AS longueur_totale
FROM adrien.itineraires
GROUP BY commune
ORDER BY longueur_totale DESC
LIMIT 3;
```

## 4.2 Calculer une zone tampon avec ST_Buffer

```
SELECT ST_Buffer(geometry, 50) AS tampon FROM adrien.itineraires;
```

## 4.3 Calculer une intersection avec ST_Intersects ou ST_Within

```
SELECT l.*
FROM adrien.lampadaires AS l
JOIN adrien.parcs AS p
ON ST_Within(l.geometry, p.geometry);
```

## 4.4 Joindre des données d'une autre table avec JOIN (par localisation)

```
TODO
```

## 4.5 Documentation des fonctions PostGIS utilisées

- https://postgis.net/docs/ST_Length.html
- https://postgis.net/docs/ST_Buffer.html
- https://postgis.net/docs/ST_Intersects.html
- https://postgis.net/docs/ST_Within.html
