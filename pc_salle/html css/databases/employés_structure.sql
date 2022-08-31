-- DDL : langage de définition des données

DROP DATABASE IF EXISTS db_employees;

CREATE  DATABASE IF NOT EXISTS db_employees;

USE db_employees;

CREATE TABLE services
(
service_id INT PRIMARY KEY,
service_name VARCHAR (50) NOT NULL
);


CREATE TABLE employees
(
employee_id INT PRIMARY KEY,
employee_name varchar (50) NOT NULL,
employee_service INT NOT NULL,
FOREIGN KEY (employee_service) REFERENCES services(service_id)

);



CREATE TABLE projects 
(
project_id INT,
project_name  VARCHAR (50) NOT NULL,
PRIMARY KEY (project_id)
);



