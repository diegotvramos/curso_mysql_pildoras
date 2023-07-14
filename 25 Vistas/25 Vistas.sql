
# VISTAS
USE PILDORAS; # ERROR 1046

CREATE VIEW ART_DEPORTES AS
SELECT NOMBREARTÍCULO, SECCIÓN, PRECIO FROM PRODUCTOS WHERE SECCIÓN='DEPORTES';

#CONSULTAMOS LA VISTA
SELECT * FROM art_deportes;

UPDATE PRODUCTOS SET PRECIO=PRECIO+10 WHERE NOMBREARTÍCULO='RAQUETA TENIS';

CREATE VIEW ART_CERAMICA AS 
SELECT NOMBREARTÍCULO, SECCIÓN, PRECIO FROM PRODUCTOS
WHERE SECCIÓN='CERAMICA';

#ELIMINACION DE VISTAS
DROP VIEW ART_CERAMICA;

#MODIFICACION DE LAS VISTAS, ALGUNOS GESTORES DE BASES DE DATOS, OJO

ALTER VIEW ART_DEPORTES AS
SELECT NOMBREARTÍCULO, SECCIÓN, PAÍSDEORIGEN FROM PRODUCTOS
WHERE PAÍSDEORIGEN='ESPAÑA';

# COMO YA EMOS VISTO FORMAS DE CREAR INSTRICCIONES SQL: INNER JOIN, GRUPBY ETC
# LA INSTRUCCION SELECT DENTRO DE UNA VISTA PUEDE SER LO COMPLEJA QUE TU QUIERAS




































