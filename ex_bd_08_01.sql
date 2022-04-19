create database escola;

use escola;

create table aluno (
idAluno int primary key auto_increment,
nome varchar(45) not null,
telefone char(11) not null,
fkRepresentante int,
fkprojeto int,
foreign key (fkrepresentante) references aluno (idAluno),
foreign key (fkprojeto) references projeto (idProjeto)
)auto_increment = 100;

create table projeto(
idProjeto int primary key auto_increment,
nome varchar(45),
descricao varchar(45)
);

create table acompanhante (
fkAluno int,
foreign key (fkAluno) references Aluno (idAluno),
idAcompanhante int,
primary key (idAcompanhante, fkALuno),
nome varchar(45),
tipoRelacao varchar(45)
);

insert into aluno (nome, telefone, fkProjeto) values
 ('Ben Tennyson', '1198765432', 1),
 ('Carlos Almeida', '1192166332', 2),
 ('Marcio Álvaro', '1194370932', 3),
 ('Gwen Stacy', '1198364911',1),
 ('Peter Parker', '1198637229', 2),
 ('Spike Lee', '1193547898', 3);

update aluno set fkrepresentante = 107 where idAluno = 106;
update aluno set fkrepresentante = 106 where idAluno = 108;
update aluno set fkrepresentante = 108 where idAluno = 107;
update aluno set fkrepresentante = 109 where idAluno = 110;
update aluno set fkrepresentante = 110 where idAluno = 111;
update aluno set fkrepresentante = 111 where idAluno = 109;

insert into projeto (nome, descricao) values
 ('Ciências', 'Bobina de Tesla'),
 ('Arte', 'Exposição Van Gogh'),
 ('Musica', 'Orquestra');
 
 insert into acompanhante (fkAluno, idAcompanhante, nome, tipoRelacao) values
 (106, 1, 'Joana', 'Namorada'),
 (106, 2, 'Gabriel', 'Amigo'),
 (108, 1, 'Emerson', 'Pai'),
 (109, 1, 'Maria', 'Mãe'),
 (110, 1, 'Tonya', 'Mãe'),
 (110, 2, 'José', 'Pai'),
 (110, 3, 'Carlos', 'Irmão');
 
 select * from aluno as aluno, aluno as representante where aluno.fkrepresentante = representante.idAluno;
 
 select * from aluno, projeto where idprojeto = fkprojeto and projeto.nome = 'musica';
 
 select * from aluno as a, aluno as r, projeto where a.fkrepresentante = r.idaluno and a.fkprojeto = idprojeto;
