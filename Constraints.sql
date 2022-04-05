create database exemplo_restricoes;

use exemplo_restricoes;

-- No SQL, existem 5 restrições ou constraints
-- 1 - PRIMARY KEY
-- 2 - FOREIGN KEY FOREIGN KEY (NOME COLUNA) REFERENCES NOME DA TABELA (NOME DA COLUNA)
-- 3 - NOT NULL - Valor desse campo é obrigatorio
-- 4 - CHECK - Validar os valores inseridos nesse campo
-- 5 - UNIQUE - Valor desse campo não pode ser repetido

create table Funcionario (
idFuncionario int primary key auto_increment,
nome varchar(45) not null,
cpf char(14) unique,
sexo char(1) check (sexo = 'm' or sexo = 'f' or sexo = 'n'),
salario decimal(7,2) check (salario > 0),
avaliacao decimal(4,2) check(avaliacao >= 0 and avaliacao <= 10)
);

insert into Funcionario values 
(null,'Ana Silva','123.456.789-01','f',2500,8);
insert into Funcionario values 
(null,'José Teixeira','928.456.789-01','m',2500,8);