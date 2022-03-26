create database atleta;
 use atleta;
 create table atleta(
 idAtleta int primary key,
 nome varchar(40),
 modalidade varchar (40),
 qtdMedalha int
 );
 
 insert into atleta values(101,'Henrique Miguel', 'natação',5);
 insert into atleta values(102,'Paulo Souza', 'natação',3);
 insert into atleta values(103,'Pedro José', 'natação',2);
 insert into atleta values(104,'Peter Parker', 'natação',6);
 insert into atleta values(105,'Bruce Banner', 'natação',1);
 insert into atleta values(106,'Beuce Wayne', 'natação',7);
 insert into atleta values(107,'Stan lee', 'natação',0);
 insert into atleta values(108,'Arthur fleck', 'natação',0);
 insert into atleta values(109,'Gustavo Amarantes', 'natação',2);
 insert into atleta values(110,'Mauricio de Souza', 'natação',5);
 insert into atleta values(111,'Whinderson Nunes', 'boxe',0);
 insert into atleta values(112,'Popó Freitas', 'boxe',4);
 insert into atleta values(113,'Israel adesanya', 'boxe',7);
 insert into atleta values(114,'Jon Jones', 'boxe',5);
 insert into atleta values(115,'Anderson Silva', 'boxe',8);
 insert into atleta values(116,'Vitor Belfort', 'boxe',2);
 insert into atleta values(117,'Wanderlei Silva', 'boxe',3);
 insert into atleta values(118,'Vitor Santos', 'boxe',0);
 insert into atleta values(119,'Chuck Lidell', 'boxe',1);
 insert into atleta values(120,'Forrest Griffin', 'boxe',4);
 insert into atleta values(121,'Serena Williams', 'Tênis',7);
 insert into atleta values(122,'Steffi Graf', 'Tênis',1);
 insert into atleta values(123,'Martina Navratilova', 'Tênis',3);
 insert into atleta values(124,'Margaret Court', 'Tênis',4);
 insert into atleta values(125,'Monica Seles', 'Tênis',2);
 insert into atleta values(126,'Martina Hingis', 'Tênis',4);
 insert into atleta values(127,'Andressa Martins', 'Tênis',0);
 insert into atleta values(128,'Ana Beatriz', 'Tênis',5);
 insert into atleta values(129,'Bruna Gouveia', 'Tênis',2);
 insert into atleta values(130,'Grazielle Santos', 'Tênis',3);
 
 select * from atleta;
 select nome, qtdMedalha from atleta;
 select modalidade, nome from atleta;
 select * from atleta where modalidade = ('natação');
 select * from atleta where qtdMedalha > (3);
 select * from atleta where idAtleta < (115);
 select nome from atleta where modalidade = ('boxe');
 select * from atleta where idAtleta in (108, 109,110,111,112,113,114,115,116);
-- Não consegui colocar entre um número e outro, esse foi o mais perto que consegui :)


