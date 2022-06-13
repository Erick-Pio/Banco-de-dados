create DATABASE acquatec;

USE acquatec;

CREATE TABLE usuario (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	email VARCHAR(50),
    tel CHAR(11),
	senha VARCHAR(50)
);

CREATE TABLE aviso (
	id INT PRIMARY KEY AUTO_INCREMENT,
	titulo VARCHAR(100),
    descricao VARCHAR(150),
	fk_usuario INT,
	FOREIGN KEY (fk_usuario) REFERENCES usuario(id)
); 

CREATE TABLE aviso (
	id INT PRIMARY KEY AUTO_INCREMENT,
	titulo VARCHAR(100),
    descricao VARCHAR(150),
	fk_usuario INT,
	FOREIGN KEY (fk_usuario) REFERENCES usuario(id)
); 

create table cover (
idcover int primary key auto_increment, 
nome varchar(20)
);

create table votacao (
id int primary key auto_increment, 
Fkcover int,
Foreign key (FkCover) REFERENCES cover(Idcover)
);

insert into cover (nome) values 
('Whatever'),
('Favourite'),
('Humbug'),
('Suck'),
('AM'),
('Tranquility');

select count(fkcover) as id from cover
join votacao
on fkcover = idcover
group by fkcover
order by fkcover;


