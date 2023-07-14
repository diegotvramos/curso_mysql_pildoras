
#CONSULTAS DE ACCION

#1) nos piden incrementar en 10 euros todo los precios de los articulos de la seccion de DEPORTE.alter
use pildoras;



UPDATE pildoras.productos set productos.PRECIO = productos.PRECIO-10
where sección ="DEPORTES";

#en pildorar informaticas al ejecutar esta sentencia trunca los decimales por el TIPO DE DATO 
#DE SU CAMPO PRECIO... ES RECOMENDABLE PONER<DECIMAL(10,2)>



#https://www.it-swarm-es.com/es/mysql/codigo-de-error-de-mysql-1175-durante-la-actualizacion-en-mysql-workbench/1068135208/
#Código de error de MySQL: 1175 durante la ACTUALIZACIÓN en MySQL Workbench

#Parece que su sesión de MySql tiene la opción safe-updates set. Esto significa que no puede actualizar o eliminar 
#registros sin especificar una clave (por ejemplo, primary key) en la cláusula where.
#Tratar:
# al dia siguiete volví a ajecutar esta sentencia ...
SET SQL_SAFE_UPDATES = 0;







UPDATE schemaname.tablename SET columnname=1;
#CAMBIAR EL TIPO DE DATO Y/O RESTRICCIONES.
#https://styde.net/modificar-tablas-en-mysql-mariadb/
ALTER TABLE productos MODIFY COLUMN precio decimal(10,2);

#no cometas el error de poner un punto en ves de una coma. tube que inportar de nuevo mi tabla por que 
#mis decilales se pucieron a 0.
ALTER TABLE productos MODIFY COLUMN precio decimal(10.2); #>>>>>>>> ERORR...



#2) ejercicio. podemos ejecutar tambien para campos de tipo texto eje: cambiar la denominacio de la seccion 
#deportes a: DEPORTIVOS 

UPDATE productos set sección = 'deportivos' where sección='deportes'; 
UPDATE productos set sección = 'deportes' where sección='deportivos'; 

#consultas de accion, creacion de tablas apartir de otra:

create table clientes_madrid select * from clientes where poblacion='madrid';




