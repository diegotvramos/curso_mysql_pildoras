

#esta consulta se realizo en access en la base de datos gestion_pedidos.


#1)realizar una subconsulta que muestre el nombre y precio de aquellos  productos de los 
# que se han pedido mas de 20 unidades

SELECT NOMBREARTÍCULO, PRECIO FROM productos 
where CÓDIGOARTÍCULO IN(SELECT CÓDIGOARTÍCULO FROM PRODUCTOSPEDIDOS 
						WHERE UNIDADES>20);
                        
# ahora lo haremos sin subconsultas, si no con INNER JOIN.

select nombreartículo, precio from productos inner join productospedidos on
	productos.códigoartículo=productospedidos.códigoartículo where unidades>20;
    
    
#2) realizar una subconsulta que me muestre aquellos clientes que no han pagado 
#CON TARGETA O QUE NO HAN REALIZADO PEDIDOS 

select empresa, poblacion from clientes 
where códigocliente NOT IN (select códigocliente from pedidos
							where formadepago="TARJETA");                        
                        