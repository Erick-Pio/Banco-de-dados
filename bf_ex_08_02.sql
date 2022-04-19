create database PraticaJogador;

use PraticaJogador;

create table Timef(
idTime int primary key auto_increment,
nome varchar(45),
nomeTecnico varchar(45),
dataFund date
) ;

create table Jogador(
idJogador int primary key auto_increment,
nome varchar(45),
posicao varchar(45),
salario decimal (7,2) check(salario >= 0),
fkTime int,
fkConselheiro int,
foreign key (fkTime) references timef (idtime),
foreign key (fkConselheiro) references jogador (idJogador)
)auto_increment = 101;

create table Seguidor (
fkJogador int,
foreign key (fkJogador) references Jogador (idJogador),
idSeguidor int,
primary key (idseguidor, fkJogador),
NickName varchar(45),
Sexo char(1) check(sexo = 'm' or sexo ='n' or sexo = 'f')
);

insert into timef(nome, nometecnico, dataFund) values
('Palmeiras','Abel','1950-08-15'),
('Pain','Dionrray','2001-08-09'),
('Loud','Fallen','2000-03-25'),
('T1','Kkoma','1998-09-20');

insert into jogador (nome, posicao, salario, fktime) values
('Sacy','Iniciador', 5000, 3),
('Aspas','Duelista', 4500, 3),
('Cariok','Jungle', 4500.50, 2),
('Wizer','Top', 8000, 2),
('Veiga','Meio-Campo', 10000, 1),
('Faker','Mid', 10000, 4);

insert into Seguidor(fkjogador, idSeguidor, nickname, sexo) values
(119, 1, 'Miles', 'm'),
(119, 2, 'Playerway', 'n'),
(120, 1, '20correr', 'f'),
(123, 1, '2020', 'm'),
(124, 1, 'Keria', 'm'),
(124, 2, 'Matta', 'm');
drop table seguidor;
delete from jogador where idjogador = 123;