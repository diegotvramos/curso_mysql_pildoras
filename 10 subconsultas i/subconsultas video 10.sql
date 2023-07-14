

# SUBCONSULTA ESCALONADA VIDEO 10
use pildoras;
SELECT NOMBREARtÍCULO, SECCIÓN FROM PRODUCTOS 
WHERE PRECIO<(select avg(precio) from productos);

#SUBCONSULTA DE LISTA.

SELECT max(PRECIO) FROM PRODUCTOS
WHERE SECCIÓN='cerámica';

 
select * from productos
where precio >all(SELECT precio FROM PRODUCTOS
WHERE SECCIÓN='cerámica');

select * from productos
where precio >any(SELECT precio FROM PRODUCTOS
WHERE SECCIÓN='cerámica');

#realizar una subconsulta que nos muestre todo los articulos de la tabla de productos cuyo precio sea superior a TODOS
# los artículos de jugueteria; el 'TODOS' LO CAMBIAREMOS POR'CUALQUIERA

select * from productos where precio>all(select precio from productos
											where sección='juguetería');
                                            

select * from productos where precio>any(select precio from productos
											where sección='juguetería');                                            


