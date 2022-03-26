create database Revista;

use revista;

create table revista(
idRevista int primary key auto_increment,
nome varchar (40),
categoria varchar (30)
);

insert into revista (idRevista, nome) values
(null, 'Veja'),
(null, 'Isto é'),
(null, 'Epoca'),
(null, 'Quatro Rodas');

select * from revista;

update revista set categoria = 'Carros' where idrevista = 4;
update revista set categoria = 'Notícias' where idrevista in (2,3);
update revista set categoria = 'Temas gerais' where idrevista = 1;

insert into revista (idRevista, nome, categoria) values
(null, 'Science', 'Ciência'),
(null, 'Revista Cult', 'Cinema'),
(null, 'Filme B', 'Cinema');

select * from revista;

desc revista;

alter table revista modify categoria varchar (40);

desc revista;

alter table revista rename column nome to nomeRevista;

select * from revista;

alter table revista add periodicidade varchar (15);

select * from revista;

update revista set periodicidade = 'Semanal' where idrevista in (2,3,4);
update revista set periodicidade = 'Quinzenal' where idrevista in (1,5);
update revista set periodicidade = 'Mensal' where idrevista in (6,7);

insert into revista (idrevista, nomerevista, categoria, periodicidade) values
(null,'Time', 'Notícia','Semanal');

select * from revista;

alter table revista drop periodicidade;

select * from revista;

create table Editora(
idEditora int primary key auto_increment,
nomeEditora varchar (40),
dataFund date
)auto_increment = 1000;

insert into editora (idEditora, nomeEditora, dataFund) values
(null,'Abril','1950-05-14'),
(null,'Panini Comics','1994-09-08'),
(null,'DarkSide Books','2012-10-30');

select * from editora;

