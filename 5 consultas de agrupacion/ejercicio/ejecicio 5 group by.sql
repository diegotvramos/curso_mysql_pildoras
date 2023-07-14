
#1.Realizar una consulta sobre la tabla “Clientes”  que muestre los campos “Dirección”, 
#“Teléfono” y “Población”. Este último debe aparecer en la consulta con el nombre de 
#“Residencia”. Los registros aparecerán ordenados descendentemente por el campo “Población”.

use pildoras;
select * from clientes;
select direccion, telefono, poblacion as residencia from clientes
order by residencia desc;


#2.	Realizar una consulta que muestre que poblaciones hay en la tabla “Clientes”.

select poblacion from clientes
group by poblacion;

#3.	Realizar una consulta de agrupación que muestre la media(tambien llamada promedio ) del precio de los 
#artículos de todas las secciones. Mostrar en la consulta los campos sección y media por 
#sección.

select * from productos;
select sección, avg(precio) as prom from productos
group by sección;

#4.	Realizar una consulta de agrupación que muestre la media del precio de todas las 
#secciones menos de juguetería. En la consulta deberán aparecer los campos 
#“Sección” y “Media por sección”.

select sección, avg(precio) from productos
where sección <>'juguetería'
group by sección;

#5.	Realizar Una consulta que muestre cuantos artículos hay de la sección “Deportes”.

select sección, count(nombreartículo) from productos
where sección = 'deportes'
group by sección;


¿Cómo nombrar campos en una tabla?
Los nombres de tablas y campos deben especificarse bajo el estándar camelCase. Este estándar especifica escribir las palabras compuestas eliminando los espacios y poniendo en mayúscula la primera letra de cada palabra. En este ámbito se utilizará la variante lowerCamelCase (la primer letra del nombre, en minúscula).

















