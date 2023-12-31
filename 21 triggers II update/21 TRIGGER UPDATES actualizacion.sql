
# usamos la base de datos: PILDORAS y la tabla: PRODUCTOS

 # TRIGGERS II DISPARADORES VIDEO 21
 
USE PILDORAS;
# CREAMOS UNA NUEBA TABLA PARA EL TRIGGER.alter

CREATE TABLE PRODUCTOS_ACTUALIZADOS(ANTERIOR_CODIGOARTICULO VARCHAR (4), ANTERIOR_NOMBREARTICULO VARCHAR(25), ANTERIOR_SECCION VARCHAR (15),
									ANTERIOR_PRECIO DECIMAL(10,2), ANTERIOR_IMPORTADO VARCHAR(15), ANTERIOR_PAISDEORIGEN VARCHAR(30),
                                    ANTERIOR_FECHA DATE, 
                                    NUEVO_CODIGOARTICULO VARCHAR(4), NUEVO_NOMBREARTICULO VARCHAR(25), NUEVO_SECCION VARCHAR(15), 
                                    NUEVO_PRECIO DECIMAL(10,2), NUEVO_IMPORTADO VARCHAR(15), NUEVO_PAISDEORIGEN VARCHAR(15), NUEVO_FECHA DATE,
                                    USUARIO VARCHAR(15), F_MODIF DATE);
                                    

# EL SIGUIENTE PASO ES LA CREACION DEL TRIGGER 
# CON EL BUSCADOR DE TEXTOS TE FACILITAS COPIANDO Y REMPLAZANDO EL OLD POR NEW TIP NOMAS....

CREATE TRIGGER ACTUALIZA_PRODUCTOS_BU BEFORE UPDATE ON PRODUCTOS FOR EACH ROW  
INSERT INTO PRODUCTOS_ACTUALIZADOS (ANTERIOR_CODIGOARTICULO, ANTERIOR_NOMBREARTICULO, ANTERIOR_SECCION, ANTERIOR_PRECIO,
									ANTERIOR_IMPORTADO, ANTERIOR_PAISDEORIGEN, ANTERIOR_FECHA, 
                                    NUEVO_CODIGOARTICULO, NUEVO_NOMBREARTICULO, NUEVO_SECCION, NUEVO_PRECIO,
									NUEVO_IMPORTADO, NUEVO_PAISDEORIGEN, NUEVO_FECHA, USUARIO, F_MODIF)
                                    #A PARTIR DE 'VALUES' ES LA TABLA PRODUCTOS DE LA BD.
 VALUES(OLD.CÓDIGOARTÍCULO, OLD.NOMBREARTÍCULO, OLD.SECCIÓN, OLD.PRECIO, OLD.IMPORTADO, OLD.PAÍSDEORIGEN, OLD.FECHA,
	    NEW.CÓDIGOARTÍCULO, NEW.NOMBREARTÍCULO, NEW.SECCIÓN, NEW.PRECIO, NEW.IMPORTADO, NEW.PAÍSDEORIGEN, NEW.FECHA,
        CURRENT_USER(), NOW());     
        
        
        # SI SALE EL ERROR 1175  EJECUTE ESTE CODIGO:
        SET SQL_SAFE_UPDATES = 0;  
        # DESPUES RECIEN LO ACTUALIZAS
UPDATE PILDORAS.PRODUCTOS SET PRECIO=PRECIO+20 
WHERE CÓDIGOARTÍCULO='AR07';

#Siga los siguientes pasos antes de ejecutar el comando ACTUALIZAR: En MySQL Workbench

    #Vaya a Edit -> Preferences
    #Haga clic en la pestaña "SQL Editor" y uncheck "Actualizaciones seguras" check box
    #Query -> Reconnect to Server // cerrar sesión y luego iniciar sesión
    #Ahora ejecuta tu consulta SQL
#p.s., no es necesario reiniciar el daemon de MySQL! 








































