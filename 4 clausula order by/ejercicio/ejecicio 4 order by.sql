
#1. Realizar una consulta que muestre aquellos productos españoles cuya fecha esté 
#comprendida entre febrero y mayo del 2002. Ordenar los resultados por el campo 
#“Nombre artículo” descendentemente.
 
			 use pildoras;
			 
			 select * from productos
			 where paísdeorigen='españa'and fecha between '2002-02-01' and '2002-05-31'
			 order by nombreartículo desc;
 

#2. Realizar una consulta que muestre los campos “Empresa”, “Dirección” y 
#“Población” de la tabla “Clientes”. Ordenar la consulta por el campo “Población” 
#ascendentemente y por “Dirección” descendentemente.


		select empresa, direccion, poblacion  from clientes
		order by poblacion, direccion desc;

#3. Realizar una consulta que muestre todos los campos de la tabla “Clientes”. 
#Ordenar los resultados por el campo “Población” ascendentemente.

		select * from clientes
		order by poblacion;





