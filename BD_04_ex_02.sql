create database atleta;
 use atleta;
 create table atleta(
 idAtleta int primary key auto_increment,
 nome varchar(40),
 modalidade varchar (40),
 qtdMedalha int
 ) auto_increment = 100;
 
 insert into atleta (nome, modalidade, qtdmedalha)values
 ('Matt Murdock', 'natação',2),
 ('Peter Parker', 'natação',6),
 ('Bruce Banner', 'natação',1),
 ('Whinderson Nunes', 'boxe',0),
 ('Popó Freitas', 'boxe',4),
 ('Israel adesanya', 'boxe',7),
 ('Serena Williams', 'Tênis',7),
 ('Ana Beatriz', 'Tênis',5),
 ('Grazielle Santos', 'Tênis',3);
 
create table pais(
idPais int primary key auto_increment,
nome varchar(30),
capital varchar(30)
);

insert into pais (nome, capital) values
('Nigéria', 'Abuja'),
('Brasil', 'Brasilia'),
('Estados Unidos', 'Washignton'),
('Irlanda', 'Dublin'),
('Jamaica', 'Kingston');

select * from pais;
select * from atleta;

alter table atleta add fkpais int;
alter table atleta add foreign key(fkpais) references pais (idpais);

update atleta set fkpais = 1 where idatleta = 6;
update atleta set fkpais = 2 where idatleta in (4,5,8,9);
update atleta set fkpais = 3 where idatleta in (3,7);
update atleta set fkpais = 4 where idatleta = 1;
update atleta set fkpais = 5 where idatleta = 2;

select * from atleta, pais where fkpais = idpais;
select * from atleta, pais where fkpais = idpais and pais.nome = 'Nigéria';




