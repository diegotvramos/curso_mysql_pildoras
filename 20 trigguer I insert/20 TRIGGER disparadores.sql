

#TRIGGERS
#creamos una nueva tabla

use pildoras;
create table reg_productos (codigo_articulo varchar(25), nombre_articulo varchar(30), precio decimal(10,2), insertado datetime);


#creamos un trigger

create trigger productos_AI AFTER INSERT ON PRODUCTOS FOR EACH ROW 
insert into REG_PRODUCTOS(codigo_articulo, nombre_articulo, precio, insertado) #se refiere a la tabla reg_productos
values(NEW.CÓDIGOARTÍCULO, NEW.NOMBREARTÍCULO, NEW.precio, now());# SE REFIERE A LA TABLA PRODUCTOS


INSERT INTO PRODUCTOS (CÓDIGOARTÍCULO, NOMBREARTÍCULO, PRECIO, PAÍSDEORIGEN) VALUES('AR75', 'PANTALON', 50,'ESPAÑA');

#AHORA VAMOS A VER LA TABLA REG PRODUCTOS.  
#VEMOS COMO EL TRIGGER INSERTO DE FORMA AUTOMATICA





































