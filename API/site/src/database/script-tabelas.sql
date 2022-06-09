-- Arquivo de apoio, caso você queira criar tabelas como as aqui criadas para a API funcionar.
-- Você precisa executar os comandos no banco de dados para criar as tabelas,
-- ter este arquivo aqui não significa que a tabela em seu BD estará como abaixo!
/* para workbench - local - desenvolvimento */


/* para sql server - remoto - produção */
create database DragonBall;
use DragonBall;
create table transformacao(idTransformacao int primary key auto_increment,
NomeTransformacao varchar(45) );
 insert into transformacao values 
 (null, 'Super Saiyajin'),
 (null, 'Super Saiyajin 2'),
 (null, 'Super Saiyajin 3'),
 (null, 'Super Saiyajin 4'),
 (null, 'Super Saiyajin God'),
 (null, 'Super Saiyajin Blue'),
 (null, 'Instinto Superior');
 select * from transformacao;
 
 create table usuario
 (idUsuario int primary key auto_increment,
 Nome varchar(45), Email varchar(45), Senha varchar(20), fkTransformacao int, 
foreign key (fkTransformacao) references Transformacao (idTransformacao));
insert into usuario values 
(null, 'Nick', 'nic@gmail.com', '1122', 7),
(null, 'Débora', 'debora@gmail.com', '1234', 6),
(null, 'Gabriel', 'gabriel@gmail.com', '1212', 5),
(null, 'Leonardo', 'leonardo@gmail.com', '1222', 4),
(null, 'Rafa', 'rafael@gmail.com', '1221', 3),
(null, 'Brandão', 'brandao@gmail.com', '1121', 2),
(null, 'Julia', 'julia@gmail.com', '1233', 1);

 
select * from usuario;
-- //sql server
create table transformacao(idTransformacao int primary key auto_increment identity(10.1),
NomeTransformacao varchar(45));
 insert into transformacao values 
 (null, 'Super Saiyajin'),
 (null, 'Super Saiyajin 2'),
 (null, 'Super Saiyajin 3'),
 (null, 'Super Saiyajin 4'),
 (null, 'Super Saiyajin God'),
 (null, 'Super Saiyajin Blue'),
 (null, 'Instinto Superior');
 select * from transformacao;
 
 create table usuario
 (idUsuario int primary key identity(1.1),
 Nome varchar(45), Email varchar(45), Senha varchar(20));
 