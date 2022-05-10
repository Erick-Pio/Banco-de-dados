create database Exemplo_Muitos_Para_Muitos;
use Exemplo_Muitos_Para_Muitos;
-- Criação das tabelas
create table Aluno (
   ra int primary key auto_increment,
   nomeAluno varchar(45),
   bairro varchar(45)
) auto_increment = 1000;

create table Curso (
   idCurso int primary key auto_increment,
   nomeCurso varchar(45),
   coordenador varchar(45)
);

-- Tabela associativa AlunoCurso
create table AlunoCurso (
   fkRa int,
   foreign key(fkRa) references Aluno(ra),
   fkCurso int,
   foreign key(fkCurso) references Curso(idCurso),
   dataInicio date,
   primary key(fkRa, fkCurso, dataInicio),  -- chave primária composta
   nivel char(2),
   media decimal(4,2)  check (media >= 0 and media <= 10)
 );
 
 -- Inserção de dados na tabela Aluno
 insert into Aluno values (null, 'Maria', 'Saúde'),
						  (null, 'João', 'Consolação');
 -- Inserção de dados na tabela Curso
 insert into Curso values (null, 'Espanhol', 'Juan'),
						  (null, 'Inglês', 'Beth');
-- Inserção de dados na tabela AlunoCurso
insert into AlunoCurso values (1000, 1, '2015-02-01','A1', 9.0),                          
                          (1000, 2, '2017-02-01','I3', 7.0), 
                          (1001, 1, '2020-02-01','B1', 7.0), 
                          (1001, 2, '2019-02-01','I2', 8.5); 
-- Exibir os dados de cada tabela separadamente.
select * from Aluno;
select * from Curso;
select * from AlunoCurso;
-- Exibir os dados dos alunos e dos cursos correspondentes.
select * from Aluno, Curso, AlunoCurso where fkRa = ra 
	and fkCurso = idCurso;
-- Exibir os dados dos alunos, mas somente de um curso.
select * from Aluno, Curso, AlunoCurso where fkRa = ra 
	and fkCurso = idCurso and nomeCurso = 'Espanhol';
-- Exibir os dados de um aluno e os dados dos cursos desse aluno.                          
select * from Aluno, Curso, AlunoCurso where fkRa = ra 
	and fkCurso = idCurso and nomeAluno = 'João';
-- Exibir a soma das médias.    
select sum(media) from AlunoCurso;    
select sum(media) as SomaMedia from AlunoCurso;    
select sum(media) as 'Soma das Médias' from AlunoCurso;    
-- Exibir a média das médias.
select avg(media) as 'Média das Médias' from AlunoCurso;
-- Para limitar a qtdade de casas decimais, podemos usar 
-- as funções round ou truncate
select round(avg(media),2) as 'Média das Médias' from AlunoCurso;    
select round(avg(media),1) as 'Média das Médias' from AlunoCurso;    
select round(avg(media)) as 'Média das Médias' from AlunoCurso;    

select truncate(avg(media),2) as 'Média das Médias' from AlunoCurso;    
select truncate(avg(media),1) as 'Média das Médias' from AlunoCurso;    
select truncate(avg(media),0) as 'Média das Médias' from AlunoCurso;    

-- Exibir a soma das médias e a média das médias.
select sum(media) as 'Soma das Médias',
    round(avg(media),2) as 'Média das Médias' from AlunoCurso;   
-- Exibir a maior e a menor média.
select max(media) as 'Maior média', min(media) as 'Menor média'
       from AlunoCurso;
-- Exibir a quantidade de médias acima de 8,0. 
select count(media) as 'Qtdade de médias acima de 8'
      from AlunoCurso where media >= 8;     

-- Exibir as médias distintas da tabela AlunoCurso
select media from AlunoCurso;

-- Exibir as médias distintas da tabela AlunoCurso
select distinct media from AlunoCurso;

-- Exibir a quantidade de médias da tabela AlunoCurso
select count(media) as 'Qtdade de médias' from AlunoCurso;

-- Exibir a quantidade de médias distintas da tabela AlunoCurso
select count(distinct media) as 'Qtdade de médias distintas' from AlunoCurso;

-- Exibir a maior e a menor média agrupado por curso
select fkCurso, max(media) as 'Maior média', min(media) as 'Menor média'
       from AlunoCurso group by fkCurso;

-- Exibir a maior e a menor média agrupado por curso com nome
select nomeCurso as 'Nome do curso', max(media) as 'Maior média', min(media) as 'Menor média'
       from AlunoCurso, curso where fkcurso = idcurso group by fkCurso;

-- Exibir a maior e a menor media agrupado por aluno
select fkra as RA, max(media) as 'Maior média', min(media) as 'Menor média'
       from AlunoCurso group by fkRa;
       
-- Exibir a maior e a menor média agrupado por Aluno com nome
select nomeAluno as 'Nome do aluno', max(media) as 'Maior média', min(media) as 'Menor média'
       from AlunoCurso, aluno where fkra=ra group by fkRa;