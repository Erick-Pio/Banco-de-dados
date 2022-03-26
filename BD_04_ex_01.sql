create database Revista;

use revista;

create table Editora(
idEditora int primary key auto_increment,
nomeEditora varchar (40),
dataFund date
)auto_increment = 1000;

create table revista(
idRevista int primary key auto_increment,
nome varchar (40),
categoria varchar (30),
fkEditora int,
foreign key (fkeditora) references editora (ideditora)
);

insert into revista (nome, categoria) values
('Veja', 'Temas gerais'),
('Isto é', 'Notícias'),
('Epoca', 'Notícias'),
('Quatro Rodas', 'Carros'),
('Science', 'Ciência'),
('Revista Cult', 'Cinema'),
('Filme B', 'Cinema'),
('Time', 'Notícia');

insert into editora (nomeEditora, dataFund) values
('Abril','1950-05-14'),
('Panini Comics','1994-09-08'),
('DarkSide Books','2012-10-30'),
('Europa','1986-12-08');


select * from editora;

update revista set fkeditora = 1002 where idrevista in (7,6);
update revista set fkeditora = 1000 where idrevista in (1,2);
update revista set fkeditora = 1001 where idrevista in (4,5);
update revista set fkeditora = 1003 where idrevista in (3,8);

select * from revista;
select * from revista, editora where fkEditora = idEditora;
select * from revista, editora where fkEditora = idEditora
		and nomeEditora = 'darkside books';







