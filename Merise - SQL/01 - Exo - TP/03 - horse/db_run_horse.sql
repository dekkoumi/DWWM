DROP DATABASE IF EXISTS db_run_horse;

CREATE DATABASE db_run_horse;

USE db_run_horse;

CREATE TABLE IF NOT EXISTS BETS
(
BET_NUMBER int primary key,
BET_TYPE varchar(10) not null,
BET_WIN boolean not null,
BET_LOST boolean not null
);

CREATE TABLE IF NOT EXISTS HORSES
(
HORSE_NUMBER int primary key,
HORSE_NAME varchar(24) unique not null,
HORSE_COUNT int not null,
HORSE_ORDER int not null
);

CREATE TABLE IF NOT EXISTS RUN
(
RUN_ID varchar(50) ,
RUN_NAME varchar(50)unique not null,
RUN_DATE date not null,
HORSE_NUMBER int,
BET_NUMBER int,
primary key (HORSE_NUMBER, BET_NUMBER, RUN_ID),
foreign key (HORSE_NUMBER) references HORSES(HORSE_NUMBER),
foreign key (BET_NUMBER) references BETS(BET_NUMBER)
); 


