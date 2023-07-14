
### VIDEO 7 CONSULTAS MULTITABLA
use pildoras;
# LOS NOMBRES DE LOS CAMPOS PONE LOS DE LA TABLA UNO 
select * from productos where sección='deportes' UNION select * from productosnuevos where sección ='deportes de riesgo';

select * from productos where precio>500 UNION select * from productosnuevos where SECCIÓN= 'ALTA COSTURA';

INSERT INTO productosnuevos(CÓDIGOARTÍCULO, SECCIÓN, NOMBREARTÍCULO, PRECIO, FECHA, IMPORTADO, PAÍSDEORIGEN,FOTO)
					  values('AR06','DEPORTES','MANCUERNAS', 60,'2000-09-13','VERDADERO','USA','');

describe productosnuevos;

# AR06 SOLO APARECE UNA VES PRUBA SIEMPRE DE LA TABLA UNO 
SELECT * FROM PRODUCTOS WHERE SECCIÓN='DEPORTES' UNION SELECT * FROM productosnuevos;

# AHORA MUESTRA LOS REGISTROS REPETIDOS CON EL OPERADOR ¡UNION ALL¡
SELECT * FROM PRODUCTOS WHERE SECCIÓN='DEPORTES' UNION ALL SELECT * FROM productosnuevos;





