

#1. Realizar una consulta que visualice los campos NOMBRE ARTÍCULO, 
#SECCIÓN, PRECIO de la tabla PRODUCTOS y un campo nuevo que 
#nombramos con el texto “DESCUENTO_7”. Debe mostrar el resultado de aplicar 
#sobre el campo PRECIO un descuento de un 7 %. El formato del nuevo campo 
#para debe aparecer con 2 lugares decimales. 
 use pildoras;

select nombreartículo, sección, precio, round( precio-(precio*0.07),2)as descuento_7 
from productos;


#2. Realizar una consulta visualizando los campos FECHA, SECCIÓN, NOMBRE
#ARTÍCULO y PRECIO de la tabla PRODUCTOS y un campo nuevo que 
#nombramos con el texto “DTO2 €_EN_CERÁMICA”. Debe mostrar el resultado 
#de aplicar sobre el campo PRECIO la resta de 2 € sólo a los artículos de la sección 
#CERÁMICA. El formato del nuevo campo debe aparecer con 2 lugares decimales.
#Ordenar el resultado de la consulta por el campo FECHA descendente. 


select fecha, sección, nombreartículo, precio, round (precio-2,2) as dto_en_cerámica
from productos
where sección='cerámica'
order by fecha desc;


#3. Realizar una consulta visualizando los campos NOMBRE ARTÍCULO, 
#SECCIÓN, PRECIO de la tabla PRODUCTOS y un campo nuevo que 
#nombramos con el texto “PRECIO_AUMENTADO_EN_2”. Debe mostrar el 
#PRECIO con un incremento de un 2% del PRECIO. Sólo debemos tener en cuenta 
#los registros de la sección FERRETERÍA. El nuevo campo debe aparecer en Euros 
#y con 2 lugares decimales. 

select nombreartículo, sección, precio, round(precio*1.02,2)as precio_aumentado_en2
from productos
where sección='ferretería';

















