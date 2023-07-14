
create database pildoras_gestionPedidos;
use pildoras_gestionPedidos;

#creamos las tablas
#importarimas la tabla de excel, pero no me permite cambiar el tipo de dato ej: varchar() 
#por eso estoy creando mis dos talas :)

create table clientes(
codigo_cliente varchar(30) primary key,
empresa varchar(30),
direccion varchar(50),
poblacion varchar(30),
telefono varchar(30),
responsable varchar(30),
historial varchar(30)
);

create table pedidos(
numero_de_pedido int primary key,
cliente_id varchar(30),
FOREIGN KEY (cliente_id) REFERENCES clientes (codigo_cliente),
fecha_de_pedido date,
forma_de_pago varchar(30),
descuento varchar(30),
enviado varchar (30)
);
drop database pildoras_gestionpedidos;
drop table pedidos;

#verificacmos en que motor de base de datos estan las tablas de pildoras_gestionpedidos
select table_name,engine from information_schema.tables where table_schema='pildoras_gestionpedidos';

#¿Qué significa CASCADE, SET NULL, RESTRICT, NO ACTION en MySQL?
#https://es.stackoverflow.com/questions/105890/qu%C3%A9-significa-cascade-set-null-restrict-no-action-en-mysql
# MYSQL trabaja con restriccion de integridad referencial RESTRICT, anque puedes utilizar CASCADE, VE EL LINK

#Convertir Una Base De Datos de MySQL a Diagrama Entidad Relación


SELECT * FROM PEDIDOS;

# error 1)) no me importaba la tabla pedidos, si o si en excel debemos cambiar el formato de fecha a años/mes/dia, 
#probar con otros formatos en excel ***hasta que reaccione**. importa igual si esta relacionado las tablas.
#  error 2)) al borrar una tabla relacionada, no me permitia crear la tabla, con su primary key, 
# tal ves se corrompieron los nombres de la llave primaria, no me dejaba crear, tube que borrar la base de datos enterra 
#y volver a crear.


SELECT CLIENTES.CODIGO_CLIENTE, POBLACION, DIRECCION, NUMERO_DE_PEDIDO, PEDIDOS.CLIENTE_ID, FORMA_DE_PAGO 
FROM CLIENTES left JOIN PEDIDOS ON CLIENTES.CODIGO_CLIENTE=PEDIDOS.CLIENTE_ID
WHERE POBLACION='MADRID' and pedidos.cliente_id is null
ORDER BY CLIENTES.CoDIGO_CLIENTE;


SELECT CLIENTES.CODIGO_CLIENTE, POBLACION, DIRECCION, NUMERO_DE_PEDIDO, PEDIDOS.CLIENTE_ID, FORMA_DE_PAGO 
FROM CLIENTES left JOIN PEDIDOS ON CLIENTES.CODIGO_CLIENTE=PEDIDOS.CLIENTE_ID
WHERE POBLACION='MADRID'
ORDER BY CLIENTES.CoDIGO_CLIENTE;


SELECT CLIENTES.CODIGO_CLIENTE, POBLACION, DIRECCION, NUMERO_DE_PEDIDO, PEDIDOS.CLIENTE_ID, FORMA_DE_PAGO 
FROM CLIENTES inner JOIN PEDIDOS ON CLIENTES.CODIGO_CLIENTE=PEDIDOS.CLIENTE_ID
WHERE POBLACION='MADRID'
ORDER BY CLIENTES.CoDIGO_CLIENTE;