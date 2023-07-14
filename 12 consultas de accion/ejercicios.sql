

#EJERCICIOS: CONSULTAS DE ACCION 

#CONSULTAS DE CREACION DE TABLAS:

#1. Realizar una consulta de acción de creación de tabla a partir de la tabla 
#CLIENTES, utilizando todos los campos de la tabla, pero únicamente los 
#registros que sean de la población Madrid. El nuevo objeto lo nombramos 
#con el texto “CLIENTES_DE_MADRID”. Ejecutamos la consulta. 
create table clientes_madrid select * from clientes where poblacion='madrid';

#2. Realizar una consulta de acción de creación de tabla a partir de la tabla 
#PRODUCTOS, utilizando todos los campos de la tabla, pero sólo los 
#registros que sean de la sección DEPORTES. El nuevo objeto – tabla lo 
#nombramos con el texto “ARTÍCULOS_DE_DEPORTES”. Ejecutamos la 
#consulta.

create table articulos_de_deportes select * from productos where sección='deportes';
drop table articulos_de_deportes;

#3. Realizar una consulta de acción de creación de tabla a partir de la tabla 
#PEDIDOS, utilizando todos los campos de la tabla, pero sólo los registros 
#que tengan registrada la forma de pago TARJETA. El nuevo objeto – tabla 
#lo nombramos con el texto “PEDIDOS_PAGADOS_CON_TARJETA”. 
#Ejecutamos la consulta. 

create table  pedidos_pagados_con_targeta select * from pedidos where formadepago='targeta';

#CONSULTA DE ACTUALIZACION:

#4. Realizar una consulta que actualice los precios de la tabla ARTÍCULOS DE 
#DEPORTE. La actualización consiste en calcular el IVA (21%) y mostrar en 
#ese campo como resultado el precio con el IVA incluido. Ejecutar la 
#consulta. 
UPDATE articulos_de_deportes SET PRECIO= PRECIO+(PRECIO*0.21);

#5. Realizar una consulta que actualice el campo DESCUENTO de la tabla 
#PEDIDOS_PAGADOS_CON TARJETA. La actualización consiste poner a un 
#5% los descuentos que se muestran inferiores a esta cifra. Ejecutar la 
#consulta.

UPDATE PEDIDOS_PAGADOS_CON_TARGETA SET DESCUENTO=0.05 WHERE DESCUENTO <0.05;





