create database Exemplo_entidadeFraca_recursivo;

use Exemplo_entidadeFraca_recursivo;

-- Criação da tab Funcionario, já com a fkSupervisor do relacionamento recursivo

create table Funcionario (
idFuncionario int primary key auto_increment,
nomeFuncionario varchar(45),
salario decimal (7,2) check (salario > 0),
sexo char (1) check (sexo = 'm' or sexo = 'f' or sexo = 'n'),
fksupervisor int,
foreign key (fkSupervisor) references Funcionario (idFuncionario)
)auto_increment = 1000;

-- Criação da tabela dependente - Tabela entidade fraca

create table Dependente (
fkFuncionario int,
foreign key (fkFuncionario) references Funcionario (idFuncionario),
idDependente int, -- NÃO COLOCAR PRIMARY KEY AQUI, NEM AUTO_INCREMENT
primary key (fkFuncionario, idDependente), -- CHAVE PRIMÁRIA COMPOSTA
nomeDependente varchar(45),
tipoRelacao varchar(45),
dataNascimento date
);

-- Inserir dados dos funcionários

insert into funcionario values
(null, 'João Nunes', 30000, 'm', null),
(null, 'Cláudio Silva', 20000, 'm', 1000),
(null, 'Ana Teixeira', 18000, 'f', 1000),
(null, 'Pedro Sousa', 12000, 'f', 1001),
(null, 'Maria Ferreira', 10000, 'f', 1002);

select * from Funcionario;

insert into Dependente values
		(1000, 1, 'Joana Nunes', 'Cônjuge', '1990-06-07'),
		(1000, 2, 'Juan Nunes', 'filho', '2010-03-06'),
		(1001, 1, 'Cláudia Silva', 'cônjuge', '1995-08-10'),
		(1001, 2, 'Cludete Silva', 'filha', '2012-09-05'),
		(1002, 1, 'Anilson Silva', 'cônjuge', '2000-11-09');
        
-- Exibir os dados da tab dependente e dos seus dependentes
select * from funcionario, dependente where fkfuncionario = idfuncionario;

-- Exibir os dados da tab dependente e dos seus dependentes, mas somente de um funcionário
select * from funcionario, dependente where fkfuncionario = idfuncionario and nomeFuncionario = 'João Nunes';

-- Exibir os dados dos funcionários e dos supervisores
select * from funcionario as funcionario, 
			  funcionario as supervisor 
		where funcionario.fksupervisor= supervisor.idfuncionario;
        
-- Exibir os dados dos funcionários, dos supervisores e dependentes
select * from funcionario as funcionario, funcionario as supervisor, dependente
		where funcionario.fksupervisor = supervisor.idfuncionario
        and fkfuncionario = funcionario.idfuncionario;
        
select * from funcionario as funcionario, funcionario as supervisor, dependente
		where funcionario.fksupervisor = supervisor.idfuncionario
        and fkfuncionario = supervisor.idfuncionario;
        

-- Forma mais usual de se fazer
select * from funcionario as f, funcionario as s, dependente
		where f.fksupervisor = s.idfuncionario
        and fkfuncionario = s.idfuncionario;
