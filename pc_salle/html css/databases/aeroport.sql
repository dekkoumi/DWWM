DROP DATABASE IF EXISTS db_aeroport;

CREATE DATABASE IF NOT EXISTS db_aeroport;

USE db_aeroport;

CREATE TABLE PROPRIETAIRES
(
PROPRIETAIRE_ID int primary key,
PROPRIETAIRE_NOM varchar (25) not null,
PROPRIETAIRE_DATE date not null,
PROPRIETAIRE_AVION varchar (255) not null,
PROPRIETAIRE_ADRESSE varchar (30) not null,
PROPRIETAIRE_TELEPHONE varchar (10) not null
);

CREATE TABLE AVIONS 
(
AVION_ID int primary key,
AVION_NOM varchar (25) not null,
AVION_TYPE varchar (255) not null,
AVION_CONSTRUCTEUR varchar (25) not null,
AVION_NOMBRE_DE_PLACES varchar (255) not null,
AVION_PUISSANCE varchar (6) not null
);

CREATE TABLE PILOTES 
(
PILOTE_ID int primary key,
PILOTE_NOM varchar (30) not null,
PILOTE_ADRESSE varchar (40) not null,
PILOTE_TELEPHONE varchar (10) not null,
PILOTE_vol time not null
);

CREATE TABLE MECANICIENS
(
MECANICIEN_ID int primary key,
MECANICIEN_NOM varchar (25) not null,
MECANICIEN_ADRESSE varchar (30) not null,
MECANICIEN_TELEPHONE varchar (10) not null,
MECANICIEN_AVION varchar (20) not null
);

CREATE TABLE INTERVENTIONS
(
INTERVENTION_ID int primary key,
INTERVENTION_OBJET varchar (25)not null,
INTERVENTION_DATE date not null,
INTERVENTION_DUREE time not null
);

CREATE TABLE POCEDER
(
PROPRIETAIRE_ID int,
AVION_ID int,
primary key (PROPRIETAIRE_ID, AVION_ID),
foreign key (PROPRIETAIRE_ID) references Proprietaires(PROPRIETAIRE_ID),
foreign key (AVION_ID) references AVIONS (AVION_ID)
);
CREATE TABLE PILOTER
(
PILOTE_ID int,
AVION_ID int,
primary key (PILOTE_ID, AVION_ID),
foreign key (PILOTE_ID) references PILOTES (PILOTE_ID),
foreign key (AVION_ID) references AVIONS (avion_ID)
);

CREATE TABLE REPARER
(
MECANICIEN_ID int,
AVION_ID int,
primary key (MECANICIEN_ID, AVION_ID),
foreign key (MECANICIEN_ID) references MECANICIENS (MECANICIEN_ID),
foreign key (AVION_ID) references AVIONS (AVION_ID)
);

CREATE TABLE PLANIFIER
(
INTERVENTION_ID int,
MECANICIEN_ID int,
primary key (INTERVENTION_ID, MECANICIEN_ID),
foreign key (INTERVENTION_ID) references INTERVENTIONS (INTERVENTION_ID),
foreign key (MECANICIEN_ID) references MECANICIENS (MECANICIEN_ID)
);
