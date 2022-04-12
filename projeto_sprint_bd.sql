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
tipoConta varchar(10) check (tipoconta = 'professor' or tipoconta = 'aluno'),
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
ativacao int not null,
tipoSensor varchar(10) check (tipoSensor = 'Entrada' or tipoSensor = 'Saida'), 
fkAmbiente int not null
)auto_increment = 500;

create table dados (
iddados int primary key auto_increment,
presenca int not null,
datahora datetime not null,
fksensor int not null,
foreign key (fksensor) references sensor (idsensor)
)auto_increment = 10000;

alter table sensor rename column fkAmbiente to fkLocal;