create database gastos;

use gastos;

create table pessoa(
idPessoa int primary key auto_increment,
nome varchar(40) not null,
dataNascimento date,
Profissao varchar(35) not null,
idioma1 varchar(20),
idioma2 varchar(20),
idioma3 varchar(20)
);

create table Gasto(
idGasto int primary key auto_increment,
dataGasto date not null,
valor decimal(6,2) not null check (valor > 0),
descricao varchar(45),
fkPessoa int,
foreign key (fkpessoa) references Pessoa (idPessoa)
)auto_increment = 1001;

insert into pessoa (nome, dataNascimento, profissao, idioma1, idioma2, idioma3) values
			('Ricardo', '1998-08-27','Marceneiro','Portugês',),
			('Mauricio', '1993-03-03','Taxista','italiano'),
			('Martha', '1995-12-07','Programador','Portugês','espanhol'),
			('José', '1999-02-29','Musico','Portugês','ingles'),
			('Ana', '2000-09-17','Publiicidade','Portugês','ingles','alemao');
       