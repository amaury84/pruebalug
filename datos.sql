CREATE DATABASE CLIENTES;
USE CLIENTES;
select id_compra, Nombre, nombre_prod from compra INNER JOIN clientes, producto;
CREATE TABLE clientes(Documento DOUBLE NOT NULL PRIMARY KEY, Nombre varchar(50) NOT NULL, celular DOUBLE NOT NULL);
CREATE TABLE producto(idproducto int(4) NOT NULL PRIMARY KEY, nombre_prod VARCHAR(20) NOT NULL, cantidad INT(3) NOT NULL, precio DOUBLE NOT NULL);
CREATE TABLE compras(id_compra int(4) NOT NULL PRIMARY KEY, id_cliente DOUBLE, id_producto int(4) NOT NULL, FOREIGN KEY(id_cliente) REFERENCES clientes (documento), FOREIGN KEY(id_producto) REFERENCES producto (idproducto));
INSERT INTO clientes(Documento,Nombre,celular) values (123,"Juancho",3003889220),(2468,"Pancha",3123069155),(1022,"Luis",3508819);
INSERT INTO producto(idproducto, nombre_prod, cantidad, precio) values(0001, "Arroz", 15, 1500),(0002, "Frijol", 20, 1600),(0003, "Lenteja", 10, 2000);  
INSERT INTO compras (id_compra, id_cliente, id_producto) values (0001,123,0001),(0002,2468,0002),(0003,1022,0003);