

# Curso de SQL Pildoras.

```sql
    use pildoras;
#1. Realizar una consulta que muestre los campos “Empresa” y “Población” de la 
#tabla “Clientes”.

select  empresa, poblacion from clientes; 

#2. Realizar una consulta que muestre los artículos d la sección “Cerámica”.

select nombreartículo from productos
where sección ='cerámica';

#3. Realizar una consulta que muestre los productos de la sección “Deportes” cuyo 
#precio esté entre 100 y 200 €. En la consulta solo se mostrarán los campos 
#“Nombre de artículo” y “Precio”.

select nombreartículo, precio from productos 
where sección = 'deportes' and precio between 100 and 200;


#4. Realizar una consulta que muestre los productos cuyo país no sea España.

select * from productos 
where paísdeorigen <> 'españa';


#5. Realizar una consulta que muestre los artículos españoles de la sección “Deportes” 
#o aquellos cuyo precio sea superior a 350 € independientemente de cual sea su 
#sección o país de origen.

select * from productos
where (sección= 'deportes' and paísdeorigen ='españa') or precio > 350;

#6. Realizar una consulta que muestre los productos cuya fecha esté entre 1/05/2001
#y 15/12/2001. En la consulta solo se visualizarán los campos “Nombre de 
#artículo”, “Sección” y “Fecha”. 

select nombreartículo, sección, fecha from productos 
where fecha between '2001-05-01' and '2001-12-15';
```

## Ejercicio 4 order by

```sql
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

```