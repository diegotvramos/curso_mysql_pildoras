
# CONSULTAS DE ACCION III

#recuerda que tienen que tener la misma estructura y tipo
#de dato en el campo. no es necesario anexar todo los campos



# anexar el la tabla CLIENTES la tabla CLIENTES_MADRID
insert into clientes 
select * from clientes_madrid;

#anexamos pero NO todo los campos.

insert into CLIENTES (códigocliente, empresa, población,telefono)
select códigocliente, empresa, población,telefono
from CLIENTES_MADRID



























