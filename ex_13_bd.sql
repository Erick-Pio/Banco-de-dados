create database exercicio13;

use exercicio13;

create table Departamento(
idDepto int primary key,
nomeDepto varchar(45),
datainicioGer date
);

alter table departamento add fkGerente int;
alter table departamento add foreign key (fkgerente) references Funcionario (idFunc);

create table Funcionario (
idFunc int primary key,
nomeFunc varchar(45),
salario decimal(8,2),
sexo char(1) check (sexo = 'm' or sexo = 'f'),
dataNasc date,
fkDepto int,
foreign key (fkDepto) references departamento (idDepto)
);

alter table funcionario add fksupervisor int;
 alter table funcionario add foreign key (fksupervisor) references funcionario (idFunc);

create table projeto (
idProj int primary key,
nomeProj varchar(45),
localproj varchar(45),
fkDepto int,
foreign key (fkdepto) references departamento (idDepto)
);

create table Funcproj (
fkFunc int,
foreign key (fkFunc) references funcionario (idFunc),
fkProj int,
foreign key (fkProj) references projeto (idProj),
primary key (fkFunc, fkProj),
hora decimal(3,1)
); 

insert into departamento (idDepto, nomeDepto, datainicioGer)values 
(105, 'pesquisa', '2008-05-22'),
(104, 'Administração', '2015-01-01'),
(101, 'Matriz', '2001-06-19');

update departamento set fkGerente = 2 where idDepto = 105;
update departamento set fkGerente = 7 where idDepto = 104;
update departamento set fkGerente = 8 where idDepto = 101;


insert into Funcionario (idFunc, nomeFunc, salario, sexo, dataNasc, fkDepto) values
(1,'Joao Silva', 3500, 'm', '1985-01-09', 105),
(2,'Fernando Wong', 4500, 'm', '1975-12-08', 105),
(3,'Alice Sousa', 2500, 'f', '1988-01-19', 104),
(4,'Janice Morais', 4300, 'f', '1970-06-20', 104),
(5,'Ronaldo Lima', 3800, 'm', '1982-09-15', 105),
(6,'Joice Leite', 2500, 'f', '1992-07-31', 105),
(7,'Antonio Pereira', 2500, 'm', '1989-03-29 ', 104),
(8,'Juliano Brito', 5500, 'm', '1957-11-10', 101);

update funcionario set fkSupervisor = 2 where idFunc = 1;
update funcionario set fkSupervisor = 8 where idFunc in (2,4);
update funcionario set fkSupervisor = 7 where idFunc = 3;
update funcionario set fkSupervisor = 1 where idFunc in (5,6);
update funcionario set fkSupervisor = 4 where idFunc = 7;

insert into Projeto (idProj, nomeProj, localProj, fkDepto) values
(1, 'Produto X', 'Santo andré', 105),
(2, 'Produto Y', 'Itu', 105),
(3, 'Produto Z', 'São Paulo', 105),
(10, 'Informatização', 'Mauá', 104),
(20, 'Reorganização', 'São Paulo', 101),
(30, 'Benefícios', 'Mauá', 104);

insert into FuncProj (fkfunc, fkProj, hora) values
(1, 1, 32.5),
(1, 2, 7.5),
(5, 3, 40.0),
(6, 1, 20.0),
(6, 2, 20.0),
(2, 2, 10.0),
(2, 3, 10.0),
(2, 10, 10.0),
(2, 20, 10.0),
(3, 30, 30.0),
(3, 10, 10.0),
(7, 10, 35.0),
(7, 30, 5.0),
(4, 30, 20.0),
(4, 20, 15.0),
(8, 20, NULL);

select *
	from Funcionario;
    
insert into Funcionario (idFunc, nomeFunc, salario, sexo, fkSupervisor, dataNasc, fkDepto) values
(9, 'Cecília Ribeiro', 2800, 'f', 4, '1980-04-05', 104);

delete from funcProj where fkfunc = 3 and fkproj = 10;

update funcionario set salario = 2800 where idFunc = 3;

update funcionario set fkDepto = 101 where idFunc = 3;

select salario, dataNasc
	from funcionario;
    
select salario 
	from funcionario; 
    
select distinct salario 
	from funcionario;    
    
select *
	from funcionario
		order by nomeFunc;
        
select *
	from funcionario
		order by salario desc;        
        
select *
	from funcionario 
		where salario >=2000 and salario <= 4000;
        
select nomeFunc, salario
			from funcionario
				where nomeFunc like 'j%'; 
                
select nomeFunc, salario
			from funcionario
				where nomeFunc like '%a';                

select nomeFunc
	from funcionario
		where nomeFunc like '__n%';
        
select nomeFunc, dataNasc
	from funcionario
		where nomeFunc like '%s____';
        
select *
	from funcionario
		join departamento
			on fkDepto = idDepto
	and nomeDepto = 'pesquisa';
    
select *
	from funcionario
		join departamento
			on fkDepto = idDepto
	and nomeDepto = 'pesquisa'
    and salario > 3500;
    
select *
	from funcionario
		join departamento
			on fkDepto = idDepto
	and nomeDepto = 'pesquisa'
    and NomeFunc like 'j%';
    
select funcionario.idFunc as 'idFuncionario', funcionario.nomeFunc, supervisor.idfunc as 'idFuncionario', supervisor.nomefunc 
	from Funcionario as funcionario
		join Funcionario as supervisor
			on funcionario.fkSupervisor = supervisor.idFunc;