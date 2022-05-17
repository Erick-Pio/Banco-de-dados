create database Exemplo_EntidadeFraca_Recursivo;
use Exemplo_EntidadeFraca_Recursivo;

-- Criação da tab Funcionario, já com a fkSupervisor do 
-- relacionamento recursivo
create table Funcionario (
  idFuncionario int primary key auto_increment,
  nomeFuncionario varchar(45),
  salario decimal (7,2),
  constraint chkSalario check (salario > 0),
  sexo char(1) check (sexo = 'm' or sexo = 'f' or sexo = 'n'),
  fkSupervisor int,
  constraint Funcionario_fksupervisor foreign key(fkSupervisor) references Funcionario(idFuncionario)
) auto_increment = 1000;

-- Criação da tab Dependente - essa tabela é uma ENTIDADE FRACA
create table Dependente (
  fkFuncionario int,
  foreign key(fkFuncionario) references Funcionario(idFuncionario),
  idDependente int,  -- NÃO COLOCAR PRIMARY KEY AQUI NEM AUTO_INCREMENT
  primary key(fkFuncionario, idDependente),  -- CHAVE PRIMÁRIA COMPOSTA
  nomeDependente varchar(45),
  tipo varchar(45),
  dataNascimento date
);

-- Inserir dados dos funcionários
insert into Funcionario values
      (null, 'João Nunes', 30000, 'm', null),  
      (null, 'Cláudio Silva', 20000, 'm', 1000),
      (null, 'Ana Teixeira', 18000, 'f', 1000),
      (null, 'Pedro Sousa', 12000, 'm', 1001),
      (null, 'Maria Ferreira', 10000, 'f', 1002);

-- Exibir os dados da tabela Funcionario
select * from Funcionario;

-- Inserir dados da tabela Dependente
-- O 2o campo é o idDependente, que começa com o valor 1 para cada fkFuncionario diferente
insert into Dependente values 
      (1000, 1, 'Joana Nunes', 'cônjuge', '1990-06-07'),
      (1000, 2, 'Juan Nunes', 'filho', '2010-03-06'),
      (1001, 1, 'Cláudia Silva', 'cônjuge', '1995-08-10'),
      (1001, 2, 'Claudete Silva', 'filha', '2012-09-05'),
      (1002, 1, 'Anilson Teixeira', 'cônjuge', '2000-11-09');

-- Exibir os dados da tab Dependente
select * from Dependente;

-- Exibir os dados dos funcionários e dos seus dependentes
select * from Funcionario, Dependente where fkFuncionario = idFuncionario;      

-- Exibir os dados dos funcionários e dos seus dependentes, mas somente de um funcionario
select * from Funcionario, Dependente where fkFuncionario = idFuncionario and nomeFuncionario = 'João Nunes';      

-- Exibir os dados dos funcionários e dos seus supervisores
select * from Funcionario as funcionario, 
              Funcionario as supervisor
        where funcionario.fkSupervisor = supervisor.idFuncionario;

-- Exibir os dados dos funcionários e dos seus supervisores
-- e dos dependentes dos funcionários
select * from Funcionario as funcionario, 
              Funcionario as supervisor,
              Dependente
        where funcionario.fkSupervisor = supervisor.idFuncionario
		  and fkFuncionario = funcionario.idFuncionario;
          
-- Exibir os dados dos funcionários e dos seus supervisores
-- e dos dependentes dos supervisores
select * from Funcionario as funcionario, 
              Funcionario as supervisor,
              Dependente
        where funcionario.fkSupervisor = supervisor.idFuncionario
		  and fkFuncionario = supervisor.idFuncionario;
          
   -- Exibir os dados dos funcionários e dos seus supervisores
select * from Funcionario as f, Funcionario as s
        where f.fkSupervisor = s.idFuncionario;
       
-- exibir os funcionarios e os seus dependentes com join 
select *
	from funcionario
		join dependente
			on fkfuncionario = idfuncionario;
-- exibir os funcionarios e os seus dependentes que apareça quem também não tem dependente
select *
	from funcionario
		left join dependente
			on fkfuncionario = idfuncionario;
-- exibir os funcionários e os seus supervisores com join
select *
	from funcionario as f
		join funcionario as s
			on f.fksupervisor = s.idfuncionario;
-- exibir os funcionários e os seus supervisores com join mas que apareça quem não tem supervisor           
select *
	from funcionario as f
		left join funcionario as s
			on f.fksupervisor = s.idfuncionario;
            
-- exibir os funcionarios e os seus dependentes e os seus supervisores 
select *
	from funcionario as f
		join funcionario as s
			on f.fksupervisor = s.idfuncionario
		join dependente
			on fkfuncionario = f.idfuncionario;
-- exibir os funcionarios e os seus dependentes e os seus supervisores que apareça quem também não tem dependente
select *
	from funcionario as f
		join funcionario as s
			on f.fksupervisor = s.idfuncionario
		left join dependente
			on fkfuncionario = f.idfuncionario;
	
-- exibir os funcionarios e os seus dependentes e os seus supervisores que apareça quem também não tem dependente e supervisor
select *
	from funcionario as f
		left join funcionario as s
			on f.fksupervisor = s.idfuncionario
		left join dependente
			on fkfuncionario = f.idfuncionario;           