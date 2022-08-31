DROP DATABASE IF EXISTS db_oeuvre_dart;

CREATE DATABASE IF NOT EXISTS db_oeuvre_dart;

USE db_oeuvre_dart;

CREATE TABLE COURANTS_ARTISTIQUES
(
COURANT_ARTISTIQUE_ID int primary key,
COURANT_ARTISTIQUE_NOM varchar (44) not null,
COURANT_ARTISTIQUE_DATE date not null,
COURANT_ARTISTIQUE_DESCRIPTION varchar (255)
);

CREATE TABLE ARTISTES
(
ARTISTE_ID int primary key,
ARTISTE_NOM varchar(40) not null,
ARTISTE_NATIONALITE varchar (20) not null,
ARTISTE_DATE_DE_NAISSANCE date not null,
ARTISTE_DATE_DE_DECE date not null
);

CREATE TABLE OEUVRES

(
OEUVRE_ID int primary key,
OEUVRE_TYPE varchar (35) not null,
OEUVRE_TITRE varchar (50) not null,
OEUVRE_DATE date not null
);

CREATE TABLE MUSES
(
MUSE_ID int primary key,
MUSE_NOM varchar (40) not null,
MUSE_VILLE varchar (35) not null
);

CREATE TABLE APPARTIENT
(
COURANT_ARTISTIQUE_ID int, 
ARTISTE_ID int,
primary key (COURANT_ARTISTIQUE_ID, ARTISTE_ID),
foreign key (COURANT_ARTISTIQUE_ID) references COURANTS_ARTISTIQUES (COURANT_ARTISTIQUE_ID),
foreign key (ARTISTE_ID) references ARTISTES (ARTISTE_ID)
);

CREATE TABLE REALISER
(
OEUVRE_ID int,
ARTISTE_ID int,
primary key (OEUVRE_ID, ARTISTE_ID),
foreign key (OEUVRE_ID) references OEUVRES (OEUVRE_ID),
foreign key(ARTISTE_ID) references ARTISTES (ARTISTE_ID)
);

CREATE TABLE EXPOSER
(
MUSE_ID int,
OEUVRE_ID int,
primary key (MUSE_ID, OEUVRE_ID),
foreign key (MUSE_ID) references MUSES (MUSE_ID),
foreign key (OEUVRE_ID) references OEUVRES (OEUVRE_ID)
);