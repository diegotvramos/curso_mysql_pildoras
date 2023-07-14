use pildoras;
select * from clientes;
select * from productos;
drop table clientes;
ALTER TABLE clientes MODIFY codigocliente varchar(100);
alter table clientes
  add primary key (codigocliente);
  # a veces es mejor poniendo con codigo por que la forma grafica me da error

#CONSULTAS SQL 
select nombrearticulo, seccion, precio 
from productos
where seccion="cerámica" or seccion="deportes";

select * from productos
where seccion="deportes" and paisdeorigen="USA";

select * from productos where precio > 300;   
select * from productos where fecha BETWEEN '2000-03-01' and '2000-04-30';
select * from productos where fecha >='2000-03-01' and fecha <='2000-04-30';
#CLAUSULA ORDER BY vid4 ordenacion de registros
select * 
from productos
where sección='deportes' or sección='cerámica'
order by sección, paísdeorigen, precio;

# VID 5-- consultas de agrupacion AS==> ES UN ALIAS para porder especificar bien la tabla a ordenar, ya que 
#al agregar SUM el nombre del campo

select sección, SUM(precio) as suma_articulos 
from productos
group by sección
order by suma_articulos; 

select sección, AVG(precio) as promedio
from productos 
group by sección
having sección ='deportes' or sección ='confección';

select poblacion, count(codigocliente) as n from  clientes group by poblacion order by n;

select sección, max(precio) from productos where sección ='confección' group by sección ;
#vid 6  consultas de calculo 

select nombreartículo, sección, precio, round(precio*1.13,2) as con_iva from productos;

select nombreartículo, sección, precio, precio-3 as con_descuento from productos;

select nombreartículo, sección, precio, fecha, now() as dia_hoy from productos 
where sección='deportes';

select nombreartículo, sección, precio, fecha, date_format(now(),'%d-%m')  as dia_hoy, datediff(now(),fecha) as diferencia 
from productos 
where sección='deportes';
