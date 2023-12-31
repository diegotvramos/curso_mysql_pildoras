
#Los INDICES nos permiten realizar busquedas con mayor rapidez.
USE PILDORAS;
CREATE TABLE EJEMPLO(DNI VARCHAR(20), NOMBRE VARCHAR(20), APELLIDO VARCHAR(20), EDAD tinyint, PRIMARY KEY (DNI));
DROP TABLE EJEMPLO;

#PODEMOS PONER LA PK A POSTERIORI(LATIN)
ALTER TABLE EJEMPLO ADD PRIMARY KEY (DNI);
#BORRAMOS EL PK DE LA TABLA
ALTER TABLE EJEMPLO DROP PRIMARY KEY;


#CLAVE PRIMARIA O INDICE PRIMARIO MULTICAMPO 
ALTER TABLE EJEMPLO ADD PRIMARY KEY (NOMBRE, APELLIDO);

#INDICES ORDINARIOS:
CREATE INDEX MIINDICE ON EJEMPLO (APELLIDO);
ALTER TABLE EJEMPLO DROP INDEX MIINDICE;

#INDICES UNICOS:
CREATE UNIQUE INDEX MIINDICE ON EJEMPLO(APELLIDO);
ALTER TABLE EJEMPLO DROP INDEX MIINDICE;  #FUNCIONA PARA BORRAR INDICE

#INDICES COMPUESTOS
CREATE UNIQUE INDEX MIINDEX ON EJEMPLO(NOMBRE, APELLIDO); 
DROP INDEX MIINDEX ON EJEMPLO; 


#PARA BORRAR EL PK EN OTROS SGDB: ORACLE, SQLSERVER, ACCESS

ALTER TABLE EJEMPLO DROP CONSTRAINT NOMBRE_ASIGNADO_INTERNAMENTEDEL_INDICE_POR_SGBD;






