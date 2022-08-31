--CREATE DATABASE db_ecf;

USE db_ecf;

CREATE TABLE realisations(
	id_rea INT NOT NULL,
	titre_rea VARCHAR(255) NOT NULL,
	date_rea DATE NOT NULL,
	texte_rea TEXT NOT NULL
);

CREATE TABLE images(
	id_img INT NOT NULL,
	url_img VARCHAR(250) NOT NULL,
	nom_img VARCHAR(100) NOT NULL,
	text_img VARCHAR(300) NOT NULL,
	ext_img VARCHAR(5) NOT NULL
);

ALTER TABLE realisations
	DROP COLUMN id_rea;

ALTER TABLE realisations
	ADD id_rea INT  NOT NULL IDENTITY;
ALTER TABLE realisations
	ADD CONSTRAINT PK_LA_VIE PRIMARY KEY (id_rea);

ALTER TABLE images
	DROP COLUMN id_img;

ALTER TABLE images
	ADD id_rea INT  NOT NULL IDENTITY;
ALTER TABLE images
	ADD CONSTRAINT PK_LA_VIE_2 PRIMARY KEY (id_img);

CREATE TABLE afficher(
	rea INT NOT NULL,
	img INT NOT NULL,
		PRIMARY KEY (rea, img),
		CONSTRAINT FK_aff_rea FOREIGN KEY (rea) REFERENCES realisations (id_rea),
		CONSTRAINT FK_aff_img FOREIGN KEY (img) REFERENCES images (id_img)
);