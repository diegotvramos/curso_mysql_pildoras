


#Para que nosotros conozcamos que motor de almacenamiento podemos utilizar 
#basta con ejecutar la siguiente sentencia en nuestra terminal.

SHOW ENGINES;

#los dos motores de almacenamiento más populares son: MyISAM e InnoDB.

###  MyISAM es el motor por default de MySQL. Una de las principales ventajas de 
#este motor es la velocidad al momento de recuperar información. MyISAM es 
#una excelente opción cuando las sentencias predominantes en nuestra aplicación 
#sean de consultas. Esta es una de las razones por las cuales MyISAM es 
#tan popular en aplicaciones web.

#Si tu aplicación necesita realizar búsquedas full-text MyISAM es un mejor opcion.

#La principal desventajas de MyISAM recae en la ausencia de atomocidad, 
#ya que no se comprueba la integridad referencial de los datos. 
#Se gana tiempo en la inserción, sí, pero perdemos confiabilidad en los datos.


#InnoDB. La principal ventaja de este motor recae en la seguridad de las operaciones. 
#InnoDB permite la ejecución de transacciones, esto nos garantiza que los datos se 
#persisten de forma correcta y si existe algún error podamos revertir todos los 
#cambios realizados. 
#Algo interesante a mencionar sobre InnoDB es que este motor realiza un bloqueo total 
#sobre un tabla cuando es ejecutada una se las siguientes sentencias.

    #Select
    #Insert
    #Update
    #Delete
    
#4 formas de determinar qué motor utiliza una tabla en MySQL:
select table_schema,table_name,engine from information_schema.tables;
select table_name,engine from information_schema.tables where table_schema='pildoras';

use pildoras; show table status where name='clientes';


#Gestión
#Si nosotros así lo deseamos podemos cambiar el motor de almacenamiento. 
#Existen dos formas de hacer esto. La primera, es modificar el archivo my.cnf.
#[mysqld]
#default-storage-engine = innodb
#La segunda forma es hacerlo directamente desde nuestra sección, 
#basta con ejecutar la siguiente sentencia.
#SET storage_engine=INNODB;
#En ambos casos modificamos el motor de almacenamiento de MyISAM a InnoDB.
#Si nosotros deseamos conocer qué motor de almacenamiento utiliza 
#una tabla en particular, podemos hacerlo ejecutando la siguiente sentencia.
#SHOW TABLE STATUS WHERE `Name` = 'tabla' \G;
#Si deseamos crear una tabla utilizando un motor en particular, debemos seguir la siguiente estructura.
#CREATE TABLE tabla_innodb (id int, value int) ENGINE=INNODB;
#CREATE TABLE tabla_myisam (id int, value int) ENGINE=MYISAM;
#CREATE TABLE tabla_default (id int, value int);

#https://codigofacilito.com/articulos/motores-mysql

