DROP DATABASE IF EXISTS db_video_club;

CREATE DATABASE IF NOT EXISTS db_video_club;

USE db_video_club;

CREATE TABLE IF NOT EXISTS CASSETTES
(
	CASSETTE_NUMBER int primary key,
	CASSETTE_TITLE varchar(24) not null,
	CASSETTE_STATE varchar(15) not null,
	CASSETTE_GENDER varchar(24) not null
);

CREATE TABLE IF NOT EXISTS MOVIES
(
	MOVIE_ID int primary key,
	MOVIE_NAME varchar(50) not null,
	MOVIE_ARCTOR varchar(255) not null,
	MOVIE_REALISATOR varchar(50) not null,
	MOVIE_DURATION time not null,
	MOVIE_PUBLIC varchar(50) not null
);

CREATE TABLE IF NOT EXISTS BORROWS
(
	BORROW_NUMBER int,
BORROW_DATE date not null,
BORROW_DATE_RETURN date not null,
CASSETTE_NUMBER int,
primary key (BORROW_NUMBER, CASSETTE_NUMBER),
foreign key (CASSETTE_NUMBER) references CASSETTES (CASSETTE_NUMBER)
);

CREATE TABLE IF NOT EXISTS CUSTOMERS
(
CUSTOMER_NUMBER int primary key,
CUSTOMER_FIRSTNAME varchar(32)not null,
CUSTOMER_LASTNAME varchar (32) not null,
CUSTOMER_ADDRESS varchar(255) not null,
CUSTOMER_DEPOSIT decimal (5.2) not null,
BORROW_NUMBER int,
foreign key (BORROW_NUMBER) references BORROWS (BORROW_NUMBER)
);