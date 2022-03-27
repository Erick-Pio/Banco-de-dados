create database aluno;

use aluno;

create table Alunos(
idAluno int primary key auto_increment,
nome varchar (40),
hobby varchar (40),
fkEmpresa int,
fkInstituicao int,
foreign key (fkempresa) references empresa (idEmpresa),
foreign key (fkinstituicao) references instituicao (idinstituicao)
) auto_increment = 1000;

create table empresa (
idEmpresa int primary key auto_increment,
nome varchar (40),
contato char (11)
)auto_increment = 100;

create table instituicao(
idInstituicao int primary key auto_increment,
nome varchar (40),
bairro varchar (40)
);

insert into alunos (nome, hobby, fkempresa, fkinstituicao) values
('Mauricio Mendes','Ler', 102, 1),
('Leonardo Lara','Esportes', 100, 1),
('Matheus Matias','Video-Game', 101, 2),
('Bruna Silva','Musica', 102, 3),
('Ana Beatriz','Ler', 100, 2);

insert into empresa (nome, contato) values
('Deloite', 11967348923),
('B3', 11998340056),
('Valemobi', 11956927010);

insert into instituicao (nome, bairro)values
('Catalano','Tatuapé'),
('Bandeirantes','Vila Mariana'),
('Lumen Vitae','Vila Mariana');

select * from alunos, instituicao where fkinstituicao = idinstituicao;
select * from alunos, empresa where fkempresa = idempresa;
select * from alunos, instituicao, empresa where fkinstituicao = idinstituicao and fkempresa = idempresa;