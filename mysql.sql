-- Criação do banco de dados aluno 
create database alunos;
-- Seleciona o bacno de dados aluno
use alunos;
-- Cria a tabela Alunos
create table alunos (
ra int primary key, 
nome varchar(50),
bairro varchar(40)
);
-- Consultar os dados da tabela alunos
select * from alunos;
-- Consultar apenas o ra da tabela alunos
select ra from alunos;
select ra, nome from alunos;
select nome,ra from alunos;
-- Inserir os dados de um aluno
insert into alunos values (03221055, 'Pedro Henrique', 'Campo Limpo');
-- Inserir dados de mais alunos
insert into alunos values (03221028, 'Marcus Vinicius', 'Rudge Ramos');
insert into alunos values (03221057, 'Thais de França', 'Parque das Nações'),
						  (03221038, 'Michelly Mendes', 'Jd Santo Alberto'),
                          (03221029, 'Henrique Medeiros', 'Jd do Estádio'),
						  (03221059, 'Lourenzo Mota', 'Jd Santo Antonio');

-- Exibir os dados dos alunos de RA maiores que o final 050
select * from alunos where ra > 03221050; 
-- cntrl D duplica a linha    
select * from alunos where ra < 03221050;     
select * from alunos where ra = 03221028;
select * from alunos where ra <> 03221028;
select * from alunos where ra != 03221028;
-- <> Padrao simbolo de diferente <> <> <> <> <>
-- != Não é o padrão, mas funciona
select * from alunos where ra in(03221005, 03221055);
select * from alunos where ra not in(03221005, 03221055);

     
                    
                          







