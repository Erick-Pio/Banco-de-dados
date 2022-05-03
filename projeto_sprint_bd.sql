create database Monitoramento;

use monitoramento;

create table empresa(
idEmpresa int primary key auto_increment,
nome varchar(30) not null,
CNPJ char(14) not null unique,
contato char(11) unique,
cidade varchar(20)
);

create table usuario(
idUsuario int primary key auto_increment,
nome varchar(35) not null,
email varchar(40) not null unique,
senha varchar(20) not null,
fkempresa int not null,
foreign key (fkempresa) references Empresa (idEmpresa)
)auto_increment = 1000;

create table tbLocal(
idLocal int primary key auto_increment,
Nome varchar(30) not null,
qtdMaxima int not null check (qtdMaxima >= 0)
)auto_increment = 100;

create table Sensor(
idSensor int primary key auto_increment,
ativacao int not null check (ativacao = 1 or ativacao = 0),
tipoSensor varchar(10) check (tipoSensor = 'Entrada' or tipoSensor = 'Saida'), 
fkLocal int not null
)auto_increment = 500;

create table dados (
fksensor int,
foreign key (fksensor) references sensor (idsensor),
idDados int,
primary key (idDados, fksensor),
presenca int not null,
datahora datetime not null
)

