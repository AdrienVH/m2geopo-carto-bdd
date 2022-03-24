------------------
--- TYPOLOGIES ---
------------------

DROP TABLE IF EXISTS type_structure;
CREATE TABLE type_structure (id integer CONSTRAINT pkey_type_structure_id PRIMARY KEY, couleur char(7), fr_libelle text, en_libelle text, de_libelle text);
INSERT INTO type_structure VALUES (1, '#a6cee3', 'Aide alimentaire principalement', '', '');
INSERT INTO type_structure VALUES (2, '#1f78b4', 'Accompagnement social (personnes, familles ou parent seul avec enfant)', '', '');
INSERT INTO type_structure VALUES (3, '#b2df8a', 'Violence conjugale / Aide aux femmes', '', '');
INSERT INTO type_structure VALUES (4, '#33a02c', 'Emploi & Réinsertion professionnelle', '', '');
INSERT INTO type_structure VALUES (5, '#fb9a99', 'Logement', '', '');
INSERT INTO type_structure VALUES (6, '#e31a1c', 'Addiction', '', '');
INSERT INTO type_structure VALUES (7, '#fdbf6f', 'Art et loisirs', '', '');
INSERT INTO type_structure VALUES (8, '#ff7f00', 'Église', '', '');
INSERT INTO type_structure VALUES (9, '#cab2d6', 'Encadrement de personnes en situation de handicap', '', '');
INSERT INTO type_structure VALUES (10, '#6a3d9a', 'Autre', 'Other', '');
INSERT INTO type_structure VALUES (11, '#ffff99', 'Jeunesse / Social pédagogique (écoles, crèches, maisons de quartier)', '', '');
INSERT INTO type_structure VALUES (0, '#000000', 'Donnée inconnue', 'Unknown', '');

DROP TABLE IF EXISTS type_aide;
CREATE TABLE type_aide (id integer CONSTRAINT pkey_type_aide_id PRIMARY KEY, couleur char(7), fr_libelle text, en_libelle text, de_libelle text);
INSERT INTO type_aide VALUES (1, '#a6cee3', 'Colis & Paniers alimentaires', '', '');
INSERT INTO type_aide VALUES (2, '#1f78b4', 'Épicerie sociale ou solidaire', '', '');
INSERT INTO type_aide VALUES (3, '#b2df8a', 'Restauration', '', '');
INSERT INTO type_aide VALUES (4, '#33a02c', 'Maraude', '', '');
INSERT INTO type_aide VALUES (5, '#fb9a99', 'Banque alimentaire', '', '');
INSERT INTO type_aide VALUES (6, '#e31a1c', 'Autre', 'Other', '');
INSERT INTO type_aide VALUES (0, '#000000', 'Donnée inconnue', 'Unknown', '');

DROP TABLE IF EXISTS type_conditionnalite;
CREATE TABLE type_conditionnalite (id integer CONSTRAINT pkey_type_conditionnalite_id PRIMARY KEY, couleur char(7), fr_libelle text, en_libelle text, de_libelle text);
INSERT INTO type_conditionnalite VALUES (1, '#33a02c', 'Inconditionnelle', '', '');
INSERT INTO type_conditionnalite VALUES (2, '#ff7f00', 'Conditionnelle', '', '');
INSERT INTO type_conditionnalite VALUES (0, '#000000', 'Donnée inconnue', 'Unknown', '');

DROP TABLE IF EXISTS type_public;
CREATE TABLE type_public (id integer CONSTRAINT pkey_type_public_id PRIMARY KEY, couleur char(7), fr_libelle text, en_libelle text, de_libelle text);
INSERT INTO type_public VALUES (1, '#a6cee3', 'Tout public', '', '');
INSERT INTO type_public VALUES (2, '#1f78b4', 'Requérants d''asile & Réfugiés', '', '');
INSERT INTO type_public VALUES (3, '#b2df8a', 'Addiction', '', '');
INSERT INTO type_public VALUES (4, '#33a02c', 'Personnes âgées', 'Ederlies', '');
INSERT INTO type_public VALUES (5, '#fb9a99', 'Femmes & Enfants', 'Women & Children', '');
INSERT INTO type_public VALUES (6, '#e31a1c', 'Sans-abris', 'Homeless', '');
INSERT INTO type_public VALUES (7, '#fdbf6f', 'Autre', 'Other', '');
INSERT INTO type_public VALUES (0, '#000000', 'Donnée inconnue', 'Unknown', '');

DROP TABLE IF EXISTS type_affiliation;
CREATE TABLE type_affiliation (id integer CONSTRAINT pkey_type_affiliation_id PRIMARY KEY, couleur char(7), fr_libelle text, en_libelle text, de_libelle text);
INSERT INTO type_affiliation VALUES (1, '#a6cee3', 'Institution fédérale', '', '');
INSERT INTO type_affiliation VALUES (2, '#1f78b4', 'Association 60', '', '');
INSERT INTO type_affiliation VALUES (3, '#b2df8a', 'Protestant', '', '');
INSERT INTO type_affiliation VALUES (4, '#33a02c', 'Catholique', '', '');
INSERT INTO type_affiliation VALUES (5, '#fb9a99', 'Chrétien', '', '');
INSERT INTO type_affiliation VALUES (6, '#e31a1c', 'Musulman', '', '');
INSERT INTO type_affiliation VALUES (7, '#fdbf6f', 'Juif', '', '');
INSERT INTO type_affiliation VALUES (8, '#ff7f00', 'Autre affiliation ou institution inclassable', '', '');
INSERT INTO type_affiliation VALUES (9, '#cab2d6', 'Fondation', '', '');
INSERT INTO type_affiliation VALUES (0, '#000000', 'Donnée inconnue', 'Unknown', '');

DROP TABLE IF EXISTS approvisionnement;
CREATE TABLE type_approvisionnement (id integer CONSTRAINT pkey_type_approvisionnement_id PRIMARY KEY, couleur char(7), fr_libelle text, en_libelle text, de_libelle text);
INSERT INTO type_approvisionnement VALUES (1, '#a6cee3', 'Table Suisse', '', '');
INSERT INTO type_approvisionnement VALUES (2, '#1f78b4', 'Partage', '', '');
INSERT INTO type_approvisionnement VALUES (3, '#b2df8a', 'Autre banque alimentaire cantonale', '', '');
INSERT INTO type_approvisionnement VALUES (4, '#33a02c', 'Table Couvre-toi', '', '');
INSERT INTO type_approvisionnement VALUES (5, '#fb9a99', 'Circuit privé - achat principalement', '', '');
INSERT INTO type_approvisionnement VALUES (6, '#e31a1c', 'Circuit privé - récupération d''aliment principalement', '', '');
INSERT INTO type_approvisionnement VALUES (7, '#fdbf6f', 'Autre', 'Other', '');
INSERT INTO type_approvisionnement VALUES (0, '#000000', 'Donnée inconnue', 'Unknown', '');

-------------------
--- DISPOSITIFS ---
-------------------

DROP TABLE IF EXISTS dispositif;
CREATE TABLE dispositif (
    nom text CONSTRAINT pkey_dispositif_nom PRIMARY KEY,
    adresse text,
    cp char(4),
    ville text,
    id_canton char(2),
    telephone text,
    url text,
    email text,
    facebook text,
    id_type_structure smallint,
    id_type_aide smallint,
    id_type_conditionnalite smallint,
    id_type_public smallint,
    id_type_affiliation smallint,
    id_type_approvisionnement smallint,
    fr_commentaire text,
    lat float,
    lon float,
    CONSTRAINT fkey_dispositif_canton FOREIGN KEY(id_canton) REFERENCES canton(id),
    CONSTRAINT fkey_dispositif_type_structure FOREIGN KEY(id_type_structure) REFERENCES type_structure(id),
    CONSTRAINT fkey_dispositif_type_aide FOREIGN KEY(id_type_aide) REFERENCES type_aide(id),
    CONSTRAINT fkey_dispositif_type_conditionnalite FOREIGN KEY(id_type_conditionnalite) REFERENCES type_conditionnalite(id),
    CONSTRAINT fkey_dispositif_type_public FOREIGN KEY(id_type_public) REFERENCES type_public(id),
    CONSTRAINT fkey_dispositif_type_affiliation FOREIGN KEY(id_type_affiliation) REFERENCES type_affiliation(id),
    CONSTRAINT fkey_dispositif_type_approvisionnement FOREIGN KEY(id_type_approvisionnement) REFERENCES type_approvisionnement(id)
);

COPY dispositif FROM '/docker-entrypoint-initdb.d/dispositifs.csv' DELIMITER ',' CSV;
ALTER TABLE dispositif ADD COLUMN geometrie geometry(POINT, 4326);
UPDATE dispositif SET geometrie = ST_SetSRID(ST_MakePoint(lon, lat), 4326);
UPDATE dispositif SET id_type_structure = 0 WHERE id_type_structure IS NULL;
UPDATE dispositif SET id_type_aide = 0 WHERE id_type_aide IS NULL;
UPDATE dispositif SET id_type_conditionnalite = 0 WHERE id_type_conditionnalite IS NULL;
UPDATE dispositif SET id_type_public = 0 WHERE id_type_public IS NULL;
UPDATE dispositif SET id_type_affiliation = 0 WHERE id_type_affiliation IS NULL;
UPDATE dispositif SET id_type_approvisionnement = 0 WHERE id_type_approvisionnement IS NULL;