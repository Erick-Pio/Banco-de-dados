create database PraticaFuncionario;

use PraticaFuncionario;

create table setor(
idSetor int primary key auto_increment,
nome varchar(45) not null,
numeroAndar int not null
);

create table funcionario (
idFuncionario int primary key auto_increment,
nome varchar(45) not null,
telefone char(11) not null unique,
telefone2 char(11),
salario decimal(7,2) not null check(salario > 0),
fkSetor int,
foreign key (fkSetor) references setor(idSetor),
fkCordenador int,
foreign key (fkCordenador) references funcionario (idfuncionario)
)auto_increment = 100;

create table acompanhante (
fkfuncionario int,
foreign key (fkFuncionario) references funcionario(idfuncionario),
idAcompanhante int,
primary key (fkfuncionario, idAcompanhante),
nome varchar(45),
tipoRelacao varchar(45),
dataNascimento date
);

insert into setor (nome, numeroAndar) values
('Têxtil','5'),
('Industria','1'),
('Marketing','7'),
('Mão de obra','2');

insert into funcionario (nome, telefone, telefone2, salario, fksetor) values
('Ricardo', '11345678901', null, 400.50, 4),
('Roberto', '11321140501', null, 1400.50, 1),
('Maria', '11044900901', null, 4000, 2),
('Ana', '11787688999', null, 500.50, 4),
('Rita', '11334521201', null, 10000, 3);

update funcionario set fkcordenador = 104 where idFuncionario = 102;
update funcionario set fkcordenador = 104 where idFuncionario = 103;
update funcionario set fkcordenador = 101 where idFuncionario = 100;
update funcionario set fkcordenador = 104 where idFuncionario = 101;

insert into acompanhante (fkfuncionario, idAcompanhante, nome, tipoRelacao, dataNascimento) values
('100','1','Mauricio', 'irmão', '1997-08-09'),
('100','2','Amanda', 'Mãe', '1960-03-01'),
('101','1','Paulo', 'marido', '1980-05-20'),
('102','1', 'Larissa', 'Esposa', '1999-12-08'),
('103','1','Raissa', 'Filha', '2010-04-25');


select* from acompanhante;

select * from funcionario, setor where fksetor = idsetor;

select * from funcionario, setor where fksetor = idsetor and setor.nome = 'Mão de obra';

select * from funcionario, acompanhante where fkfuncionario = idfuncionario;

select * from funcionario, acompanhante where fkfuncionario = idfuncionario and funcionario.nome = 'ana';

select * from funcionario, acompanhante, setor where fkfuncionario = idfuncionario and fksetor = idsetor;

select * from funcionario as f, funcionario as c where f.fkcordenador = c.idfuncionario;

select * from funcionario as f, funcionario as c where f.fkcordenador = c.idfuncionario and c.nome = 'rita';

select * from funcionario as f, funcionario as c, setor where f.fkcordenador = c.idfuncionario and idsetor = c.fksetor;

select * from funcionario as f, funcionario as c, setor, acompanhante where f.fkcordenador = c.idfuncionario and idsetor = c.fksetor and c.idfuncionario = fkfuncionario;

select * from funcionario as f, funcionario as c, setor, acompanhante where f.fkcordenador = c.idfuncionario and idsetor = c.fksetor and f.idfuncionario = fkfuncionario;