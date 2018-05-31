create database Site_bd;
use Site_bd; 

create table UsuariosAdmin(
usuarios varchar(50),
senha varchar(50)
);
CREATE TABLE PedidosFale (
email varchar(50),
nome varchar(50),
pedido varchar(50)
);

INSERT INTO UsuariosAdmin VALUES ('itechforce@gmail.com','ibituruna');

select*from UsuariosAdmin;
select*from PedidosFale;