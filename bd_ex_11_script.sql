create database AlunoDisciplina;

use AlunoDisciplina;

create table aluno (
Ra int primary key auto_increment,
nome varchar(45),
bairro varchar(45)
)auto_increment = 101;

create table disciplina (
idDisciplina int primary key auto_increment,
nome varchar(45)
);

create table matricula (
fkRa int ,
foreign key (fkRA) references aluno (RA),
fkdisciplina int,
foreign key (fkdisciplina) references disciplina (iddisciplina),
datamatricula date,
primary key (fkra, fkdisciplina, datamatricula),
media decimal(3,1),
qtdFalta int,
semestre int
);

insert into aluno (nome, bairro) values
('João', 'Consolação'),
('Maria', 'Consolação'),
('Ana', 'Jardins'),
('Paulo', 'Higienópolis'),
('Bruno', 'Paulista');

insert into disciplina (nome) values
('Banco de dados'),
('Algoritmo'),
('Arq. Comp'),
('Tecnologia da Informação');

insert into matricula (fkRA, fkDisciplina, datamatricula, media, qtdfalta, semestre) values
(101, 1, '2022-01-28', 9.8, 0, 1),
(101, 2, '2022-01-28', 8.5, 2, 1),
(101, 4, '2022-01-28', 7, 3, 1),
(102, 3, '2022-02-26', 10, 5, 2),
(102, 1, '2022-02-26', 5, 6, 2),
(103, 3, '2022-03-20', 8, 2, 3),
(104, 1, '2022-01-10', 10, 1, 1),
(104, 2, '2022-03-10', 8, 0, 1),
(105, 1, '2022-02-15', 9, 0, 2),
(105, 3, '2022-02-15', 7.5, 5, 2),
(105, 4, '2022-02-15', 6, 3, 2);

select * from aluno;
select * from matricula;
select * from disciplina;

select * from aluno, matricula, disciplina where fkra = ra and fkdisciplina = iddisciplina; 

select * from aluno, matricula, disciplina where fkra = ra and fkdisciplina = iddisciplina and disciplina.nome = 'Algoritmo'; 

select * from aluno, matricula, disciplina where fkra = ra and fkdisciplina = iddisciplina and aluno.nome = 'João';

select sum(media), sum(qtdfalta) from matricula; 

select avg(media), avg(qtdfalta) from matricula;

select min(media), max(media) from matricula;

select count(qtdfalta > 20) from matricula;




