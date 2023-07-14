

#CONSULTAS DE ELIMINACIO II
use pildoras;
#eliminar los articulos de la tabla de productos que sean de la seccion de deportes
#(deportivos)  y ademas se encuentren entre 50 y 100.

delete from productos where sección ='deportivos' and precio between 50 and 1000;

#Hacer una consulta que me muestre los clientes que SI han hecho pedidos.alter

select empresa from clientes inner join pedidos on clientes.códigocliente=pedidos.códigocliente;
select distinct empresa from clientes inner join pedidos on clientes.códigocliente=pedidos.códigocliente;

#eliminame de la tabla de clientes los clientes que no han hecho pedidos.

delete distinctrow clientes.*, pedidos.códigocliente
from clientes left join pedidos on clientes.códigocliente= pedidos.códigocliente
where pedidos.códigocliente is null;



