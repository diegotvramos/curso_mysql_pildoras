

use pildoras;

CREATE TABLE PRUEBA(NOMBRE VARCHAR(30));
DROP TABLE PRUEBA;

CREATE TABLE PRUEBA(NOMBRE VARCHAR(30), APELLIDO VARCHAR(20), EDAD tinyint, 
FECHA_NACIMIENTO DATE, CARNET BOOL);

DROP TABLE PRUEBA;

CREATE TABLE PRUEBA(ID_ALUMNO INT AUTO_INCREMENT PRIMARY KEY, NOMBRE VARCHAR(30), 
APELLIDO VARCHAR(20), EDAD tinyint, FECHA_NACIMIENTO DATE, CARNET BOOL);