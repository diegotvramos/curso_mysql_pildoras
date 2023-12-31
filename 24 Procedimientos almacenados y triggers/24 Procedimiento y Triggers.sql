
# PROCEDIMIENTOS Y TRIGGERS
USE PILDORAS;

DELIMITER $$
CREATE PROCEDURE CALCULA_EDAD (AÑO_NACIMIENTO INT)
BEGIN
	DECLARE AÑO_ACTUAL INT default 2021;
    DECLARE EDAD INT;
    
    SET EDAD=AÑO_ACTUAL-AÑO_NACIMIENTO;
    SELECT EDAD;

END$$
DELIMITER ; #RECETEAMOS EL DELIMITADOR

#para eliminar el procedimiento
DROP PROCEDURE IF EXISTS CALCULA_EDAD;

# para ejecutarlo tienes 2 opciones, 
#1 con el codigo y mandando parametros
call calcula_edad(1997);
#2 el la paleta izquierda buscas el procedimiento, en su lado derecho hay un icono de un rayito para ejecutarlo-


# trigger condicionales

DELIMITER $$
CREATE TRIGGER REVISA_PRECIO_BU BEFORE UPDATE ON PRODUCTOS FOR EACH ROW    #¿CUANDO VA EJECUTAR LA ACION,? ANTES DE ACTUALIZAR PRA QUE HAGA UNA COMPROVACION ANTES DE ACTUALIZAR
	BEGIN 
        IF(NEW.PRECIO<0) THEN
			SET NEW.PRECIO=0;
        ELSEIF(NEW.PRECIO>1000) THEN  # PARA ENCONTAR ERRORES QUITA LOS BLOQUES DE LINEA POR UN MOMENTO...
			SET NEW.PRECIO=1000;
        END IF;
	END $$
DELIMITER ;        

# VAMOS HACER UNA CONSULTA DE ACTUALIZACION

UPDATE PRODUCTOS SET PRECIO = -444 WHERE CÓDIGOARTÍCULO='AR01';

# ELIMINAMOS UN TRIGGER
DROP TRIGGER REVISA_PRECIO_BU;
# SI NO CUMPLE LAS CONDICIONES DEJAMOS EL PRECIO COMO ESTABA


DELIMITER $$
CREATE TRIGGER REVISA_PRECIO_BU BEFORE UPDATE ON PRODUCTOS FOR EACH ROW    #¿CUANDO VA EJECUTAR LA ACION,? ANTES DE ACTUALIZAR PRA QUE HAGA UNA COMPROVACION ANTES DE ACTUALIZAR
	BEGIN 
        IF(NEW.PRECIO<0) THEN
			SET NEW.PRECIO=OLD.PRECIO;
        ELSEIF(NEW.PRECIO>1000) THEN  # PARA ENCONTAR ERRORES QUITA LOS BLOQUES DE LINEA POR UN MOMENTO...
			SET NEW.PRECIO=OLD.PRECIO;
        END IF;
	END $$
DELIMITER ;  































































