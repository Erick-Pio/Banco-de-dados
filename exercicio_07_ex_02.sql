create database gastos;

use gastos;

create table pessoa(
idPessoa int primary key auto_increment,
nome varchar(40) not null,
dataNascimento date,
Profissao varchar(35) not null,
idioma varchar(20)
);

create table Gasto(
idGasto int primary key auto_increment,
dataGasto date not null,
valor decimal(6,2) not null check (valor > 0),
descricao varchar(45),
fkPessoa int,
foreign key (fkpessoa) references Pessoa (idPessoa)
)auto_increment = 1001;