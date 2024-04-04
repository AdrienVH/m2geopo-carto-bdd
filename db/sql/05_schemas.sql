ALTER TABLE public.communes ADD pop_2021 INTEGER;
UPDATE public.communes SET pop_2021 = 261804 WHERE insee = '33063';
UPDATE public.communes SET pop_2021 = 16798 WHERE insee = '33003';
UPDATE public.communes SET pop_2021 = 3207 WHERE insee = '33004';
UPDATE public.communes SET pop_2021 = 8645 WHERE insee = '33013';
UPDATE public.communes SET pop_2021 = 7842 WHERE insee = '33032';
UPDATE public.communes SET pop_2021 = 30813 WHERE insee = '33039';
UPDATE public.communes SET pop_2021 = 16004 WHERE insee = '33056';
UPDATE public.communes SET pop_2021 = 3773 WHERE insee = '33065';
UPDATE public.communes SET pop_2021 = 24339 WHERE insee = '33069';
UPDATE public.communes SET pop_2021 = 20215 WHERE insee = '33075';
UPDATE public.communes SET pop_2021 = 8300 WHERE insee = '33096';
UPDATE public.communes SET pop_2021 = 26778 WHERE insee = '33119';
UPDATE public.communes SET pop_2021 = 24374 WHERE insee = '33162';
UPDATE public.communes SET pop_2021 = 17749 WHERE insee = '33167';
UPDATE public.communes SET pop_2021 = 25835 WHERE insee = '33192';
UPDATE public.communes SET pop_2021 = 11572 WHERE insee = '33200';
UPDATE public.communes SET pop_2021 = 23291 WHERE insee = '33249';
UPDATE public.communes SET pop_2021 = 7850 WHERE insee = '33273';
UPDATE public.communes SET pop_2021 = 75729 WHERE insee = '33281';
UPDATE public.communes SET pop_2021 = 10142 WHERE insee = '33312';
UPDATE public.communes SET pop_2021 = 66760 WHERE insee = '33318';
UPDATE public.communes SET pop_2021 = 7583 WHERE insee = '33376';
UPDATE public.communes SET pop_2021 = 2144 WHERE insee = '33434';
UPDATE public.communes SET pop_2021 = 32538 WHERE insee = '33449';
UPDATE public.communes SET pop_2021 = 997 WHERE insee = '33487';
UPDATE public.communes SET pop_2021 = 10727 WHERE insee = '33519';
UPDATE public.communes SET pop_2021 = 45225 WHERE insee = '33522';
UPDATE public.communes SET pop_2021 = 40500 WHERE insee = '33550';

ALTER TABLE public.lampadaires DROP COLUMN ogc_fid;
ALTER TABLE public.lampadaires DROP COLUMN partitionkey;
ALTER TABLE public.lampadaires DROP COLUMN rowkey;
ALTER TABLE public.lampadaires DROP COLUMN timestamp;
ALTER TABLE public.lampadaires DROP COLUMN entityid;
ALTER TABLE public.lampadaires DROP COLUMN x_long;
ALTER TABLE public.lampadaires DROP COLUMN y_lat;

ALTER TABLE public.lampadaires RENAME wkb_geometry TO geometry;

ALTER TABLE public.itineraires DROP COLUMN ogc_fid;
ALTER TABLE public.itineraires DROP COLUMN geo_point_2d;
ALTER TABLE public.itineraires DROP COLUMN gid;
ALTER TABLE public.itineraires DROP COLUMN geom_err;
ALTER TABLE public.itineraires DROP COLUMN cdate;
ALTER TABLE public.itineraires DROP COLUMN mdate;

ALTER TABLE public.itineraires RENAME wkb_geometry TO geometry;

ALTER TABLE public.parcs DROP COLUMN ogc_fid;
ALTER TABLE public.parcs DROP COLUMN geo_point_2d;
ALTER TABLE public.parcs DROP COLUMN gid;
ALTER TABLE public.parcs DROP COLUMN geom_err;
ALTER TABLE public.parcs DROP COLUMN label;
ALTER TABLE public.parcs DROP COLUMN gestion;
ALTER TABLE public.parcs DROP COLUMN typologie;
ALTER TABLE public.parcs DROP COLUMN cdate;
ALTER TABLE public.parcs DROP COLUMN mdate;
ALTER TABLE public.parcs DROP COLUMN geo_shape;

ALTER TABLE public.parcs RENAME wkb_geometry TO geometry;

ALTER TABLE public.communes DROP COLUMN ogc_fid;

ALTER TABLE public.communes RENAME wkb_geometry TO geometry;

CREATE SCHEMA adrien;
CREATE TABLE adrien.lampadaires AS SELECT * FROM public.lampadaires;
CREATE TABLE adrien.itineraires AS SELECT * FROM public.itineraires;
CREATE TABLE adrien.parcs AS SELECT * FROM public.parcs;
CREATE TABLE adrien.communes AS SELECT * FROM public.communes;

CREATE SCHEMA clara;
CREATE TABLE clara.lampadaires AS SELECT * FROM public.lampadaires;
CREATE TABLE clara.itineraires AS SELECT * FROM public.itineraires;
CREATE TABLE clara.parcs AS SELECT * FROM public.parcs;
CREATE TABLE clara.communes AS SELECT * FROM public.communes;

CREATE SCHEMA jeanne;
CREATE TABLE jeanne.lampadaires AS SELECT * FROM public.lampadaires;
CREATE TABLE jeanne.itineraires AS SELECT * FROM public.itineraires;
CREATE TABLE jeanne.parcs AS SELECT * FROM public.parcs;
CREATE TABLE jeanne.communes AS SELECT * FROM public.communes;

CREATE SCHEMA julien;
CREATE TABLE julien.lampadaires AS SELECT * FROM public.lampadaires;
CREATE TABLE julien.itineraires AS SELECT * FROM public.itineraires;
CREATE TABLE julien.parcs AS SELECT * FROM public.parcs;
CREATE TABLE julien.communes AS SELECT * FROM public.communes;

CREATE SCHEMA juliette;
CREATE TABLE juliette.lampadaires AS SELECT * FROM public.lampadaires;
CREATE TABLE juliette.itineraires AS SELECT * FROM public.itineraires;
CREATE TABLE juliette.parcs AS SELECT * FROM public.parcs;
CREATE TABLE juliette.communes AS SELECT * FROM public.communes;

CREATE SCHEMA loyce;
CREATE TABLE loyce.lampadaires AS SELECT * FROM public.lampadaires;
CREATE TABLE loyce.itineraires AS SELECT * FROM public.itineraires;
CREATE TABLE loyce.parcs AS SELECT * FROM public.parcs;
CREATE TABLE loyce.communes AS SELECT * FROM public.communes;

CREATE SCHEMA melodie;
CREATE TABLE melodie.lampadaires AS SELECT * FROM public.lampadaires;
CREATE TABLE melodie.itineraires AS SELECT * FROM public.itineraires;
CREATE TABLE melodie.parcs AS SELECT * FROM public.parcs;
CREATE TABLE melodie.communes AS SELECT * FROM public.communes;