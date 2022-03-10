-CREATE DATABASE DB_TP_FRANCK;
USE DB_TP_FRANCK;
DROP TABLE IF EXISTS EMP;
DROP TABLE IF EXISTS DEPT;

CREATE TABLE DEPT(
	DEPTNO TINYINT NOT NULL,
	DNAME VARCHAR(50) NOT NULL,
	LOC VARCHAR(50) NOT NULL,
		CONSTRAINT PK_DEPT_DEPTNO PRIMARY KEY (DEPTNO),	
);

CREATE TABLE EMP(
	EMPNO SMALLINT NOT NULL,
	ENAME VARCHAR(32) NOT NULL,
	JOB VARCHAR(32) NOT NULL,
	MGR SMALLINT,
	HIREDATE DATE NOT NULL,
	SAL MONEY,
	COMM MONEY,
	DEPTNO TINYINT NOT NULL,
		CONSTRAINT PK_EMP_EMPNO_ID PRIMARY KEY (EMPNO),
		CONSTRAINT FK_EMP_DEPTNO FOREIGN KEY (DEPTNO) REFERENCES DEPT (DEPTNO),
		CONSTRAINT FK_EMP_MGR FOREIGN KEY (MGR) REFERENCES EMP (EMPNO),
);

IF NOT EXISTS (SELECT * FROM sys.sysobjects WHERE name = 'PROJET' AND xtype = 'U')
BEGIN
	CREATE TABLE PROJET(
		PROJETNO SMALLINT NOT NULL,
		PROJETNAME VARCHAR(5) NOT NULL,
		BUDGET INT NOT NULL,
			CONSTRAINT PK_PROJ_PROJETNO PRIMARY KEY (PROJETNO)
	);
END 


ALTER TABLE EMP
	ADD PROJETNO SMALLINT;
ALTER TABLE EMP
	ADD CONSTRAINT FK_EMP_PROJETNO FOREIGN KEY (PROJETNO) REFERENCES PROJET (PROJETNO); 
 32  merise/training ECF/04 - tp_franck/insert_data.sql 
@@ -0,0 +1,32 @@
USE DB_TP_FRANCK;

INSERT INTO DEPT(DEPTNO,DNAME,LOC)
VALUES
(10,'ACCOUNTING','NEW YORK'),
(20,'RESEARCH','DALLAS'),
(30,'SALES','CHICAGO'),
(40,'OPERATIONS','BOSTON')

INSERT INTO EMP(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
VALUES
(7369,'SMITH','CLERK',7902,'1980-12-17',800,NULL,20),
(7499,'ALLEN','SALESMAN',7698,'1981-02-20',1600,300,30),
(7521,'WARD','SALESMAN',7698,'1981-02-22',1250,500,30),
(7566,'JONES','MANAGER',7839,'1981-04-02',2975,NULL,20),
(7654,'MARTIN','SALESMAN',7698,'1981-09-28',1250,1400,30),
(7698,'BLAKE','MANAGER',7839,'1981-05-01',2850, NULL,30),
(7782,'CLARK','MANAGER',7839,'1982-07-09',2450,NULL,10),
(7788,'SCOTT','ANALYST',7566,'1982-12-09',3000,NULL,20),
(7839,'KING','PRESIDENT',NULL,'1981-11-17',5000,NULL,10),
(7844,'TURNER','SALESMAN',7698,'1981-09-08',1500,0,30),
(7876,'ADAMS','CLERK',7788,'1983-01-12',1100,NULL,20),
(7900,'JAMES','CLERK',7698,'1981-12-03',950,NULL,30),
(7902,'FORD','ANALYST',7566,'1981-12-03',3000,NULL,20),
(7934,'MILLER','CLERK',7782,'1982-01-23',1300,NULL,10)

INSERT INTO PROJET(PROJETNO, PROJETNAME, BUDGET)
VALUES
	(101, 'ALPHA',	96000),
	(102, 'BETA',	82000),
	(103, 'GAMMA',	15000)

 158  merise/training ECF/04 - tp_franck/select_data.sql 
@@ -0,0 +1,158 @@
USE DB_TP_FRANCK;

-- 1.Donner nom, job, numéro et salaire de tous les employés, puis seulement des employés du département 10
SELECT EMPNO,ENAME,JOB,SAL
FROM EMP 
SELECT EMPNO,ENAME,JOB,SAL
FROM EMP 
WHERE DEPTNO = 10; 

--2.Donner nom, job et salaire des employés de type MANAGER dont le salaire est supérieur à 2800
SELECT ENAME,JOB,SAL
FROM EMP
WHERE JOB = 'MANAGER' AND SAL > 2800;

--3.Donner la liste des MANAGER n'appartenant pas au département 30
SELECT EMPNO, ENAME,JOB
FROM EMP
WHERE JOB = 'MANAGER' AND DEPTNO <> 30;

-- 4.Liste des employés de salaire compris entre 1200 et 1400
SELECT EMPNO, ENAME,SAL
FROM EMP
WHERE SAL BETWEEN 1200 AND 1400;

--5.Liste des employés des départements 10 et 30 classés dans l'ordre alphabétique
SELECT EMPNO, ENAME,DEPTNO
FROM EMP
WHERE DEPTNO IN(10,30)
ORDER BY ENAME;

--6.Liste des employés du département 30 classés dans l'ordre des salaires croissants
SELECT *
FROM EMP 
WHERE DEPTNO = 30 
ORDER BY SAL ASC;

--7.Liste de tous les employés classés par emploi et salaires décroissants
SELECT *
FROM EMP 
ORDER BY JOB DESC, SAL DESC;

--8.Liste des différents emplois
SELECT JOB
FROM EMP 
GROUP BY JOB;
--OU

SELECT DISTINCT JOB
FROM EMP;

--9.Donner le nom du département où travaille ALLEN
SELECT ENAME,DNAME
FROM EMP
	INNER JOIN DEPT 
ON DEPT.DEPTNO = EMP.DEPTNO
WHERE ENAME = 'ALLEN' ;

--10.Liste des employés avec nom du département, nom, job, salaire classés par noms de départements et par salaires décroissants.
SELECT ENAME,DNAME, JOB, SAL
FROM EMP
	INNER JOIN DEPT 
ON DEPT.DEPTNO = EMP.DEPTNO
ORDER BY DNAME DESC,SAL DESC;

--11.Liste des employés vendeurs (SALESMAN) avec affichage de nom, salaire, commissions, salaire + commissions
SELECT ENAME,JOB, SAL, COMM, SAL + COMM 
AS REST
FROM EMP
WHERE JOB = 'SALESMAN';

--12.Liste des employés du département 20: nom, job, date d'embauche sous forme VEN 28 FEV 1997'
SELECT ENAME,JOB,  FORMAT(HIREDATE, 'ddd dd MMM yyyy','FR-fr') AS NEWDATE
--AS : permet de renommer ou de nommer une colonne existante
FROM EMP 
WHERE DEPTNO =20;

--13.	Donner le salaire le plus élevé par département
SELECT MAX(SAL) AS MAXSAL, EMP.DEPTNO, DNAME
--MAX() permet de donner la valeur maximal d'un nombre donné
FROM EMP 
	INNER JOIN DEPT
	ON DEPT.DEPTNO = EMP.DEPTNO
GROUP BY EMP.DEPTNO,DNAME;

--14.Donner département par département masse salariale, nombre d'employés, salaire moyen par type d'emploi.
SELECT  EMP.DEPTNO,JOB,SUM(SAL)AS SUMSAL, COUNT(ENAME) AS NUMBEMP, AVG(SAL) AS AVERAGESAL
FROM EMP
	INNER JOIN DEPT 
	ON DEPT.DEPTNO = EMP.DEPTNO
GROUP BY EMP.DEPTNO, JOB
ORDER BY EMP.DEPTNO;
--moyenne marche pas a cause de JOB

--15.Même question mais on se limite aux sous-ensembles d'au moins 2 employés
SELECT  EMP.DEPTNO,JOB,SUM(SAL)AS TRUC, COUNT(ENAME) AS MACHIN, AVG(SAL) AS BIDULLE
FROM EMP
	INNER JOIN DEPT 
	ON DEPT.DEPTNO = EMP.DEPTNO
GROUP BY EMP.DEPTNO, JOB
HAVING COUNT(ENAME)>=2
ORDER BY EMP.DEPTNO;
--moyenne marche pas a cause de JOB

--16.Liste des employés (Nom, département, salaire) de même emploi que JONES
SELECT ENAME, DNAME, SAL, JOB, DEPT.DEPTNO
FROM EMP
	INNER JOIN DEPT
	ON DEPT.DEPTNO = EMP.DEPTNO
WHERE JOB = 'MANAGER';

--17.Liste des employés (nom, salaire) dont le salaire est supérieur à la moyenne globale des salaires
SELECT ENAME,SAL
FROM EMP
WHERE SAL > (SELECT AVG(SAL) AS   AVERAGE FROM EMP);

--18.Création d'une table PROJET avec comme colonnes numéro de projet (3 chiffres), nom de projet (5 caractères), budget. Entrez les valeurs suivantes:
--101, ALPHA,	96000
--102, BETA,	82000
--103, GAMMA,	15000
--Autre requete 

--19.Ajouter l'attribut numéro de projet à la table EMP et affecter tous les vendeurs du département 30 au projet 101, et les autres au projet 102
SELECT EMP.PROJETNO, JOB, EMP.DEPTNO 
FROM EMP
	INNER JOIN PROJET
	ON EMP.PROJETNO = PROJET.PROJETNO
UPDATE EMP 
	SET PROJETNO = 101
WHERE DEPTNO = 30 AND JOB = 'SALESMAN'
UPDATE EMP 
	SET PROJETNO = 102
WHERE DEPTNO <> 30 AND JOB <> 'SALESMAN';

--20.Créer une vue comportant tous les employés avec nom, job, nom de département et nom de projet
CREATE VIEW employees_info AS
	SELECT e.ENAME, e.JOB, d.DNAME, p.PROJETNAME 
	FROM EMP AS e
		INNER JOIN DEPT AS d ON d.DEPTNO = e.DEPTNO
		INNER JOIN PROJET AS p ON p.PROJETNO = e.PROJETNO;

--21.A l'aide de la vue créée précédemment, lister tous les employés avec nom, job, nom de département et nom de projet triés sur nom de département et nom de projet
SELECT * 
FROM employees_info
ORDER BY DNAME, PROJETNAME;

--22.Donner le nom du projet associé à chaque manager
SELECT PROJETNAME 
FROM employees_info 
WHERE JOB = 'MANAGER';

--PARTIE 2