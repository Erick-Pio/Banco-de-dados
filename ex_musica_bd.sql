create database Musica;
use musica;
create table musica(
idMusica int primary key,
titulo varchar (40),
artista varchar (40),
genero varchar (40)
);

insert into musica values (100,'Run to the hills','Iron Maiden','Rock');
insert into musica values (101,'Everlong','Foo Fighters','Rock');
insert into musica values (102,'Secret door','Arctic Monkeys','Rock');
insert into musica values (103,'Selfless','The Strokes','Rock');
insert into musica values (104,'Run','Foo Fighters','Rock');
insert into musica values (105,'The Trooper','Iron Maiden','Rock');
insert into musica values (106,'Como tudo deve ser','Charlie Brown Jr','Rock');
insert into musica values (107,'Dance little liar','Arctic Monkeys','Rock');
insert into musica values (108,'In my life','The Beatles','Rock');
insert into musica values (109,'Come Together','The Beatles','Rock');
insert into musica values (110,'Aint got no','Nina Simone','Jazz');
insert into musica values (111,'Fellin Good','Nina Simone','Jazz');
insert into musica values (112,'I put a spell on you','Nina Simone','Jazz');
insert into musica values (113,'Changes','Charley Bradley','Jazz');
insert into musica values (114,'Valerie','Amy Winehouse','Jazz');
insert into musica values (115,'He can only hold her','Amy Winehouse','Jazz');
insert into musica values (116,'Back to black','Amy Winehouse','Jazz');
insert into musica values (117,'Fly me to the moon','Frank Sinatra','Jazz');
insert into musica values (118,'Thats life','Frank Sinatra','Jazz');
insert into musica values (119,'Aint No Sunshine','Bill Withers','Jazz');
insert into musica values (120,'Chove Chuva','Jorge Ben Jor','Samba');
insert into musica values (121,'Oba La Vem Ela','Jorge Ben Jor','Samba');
insert into musica values (122,'O Telefone Tocou Novamente','Jorge Ben Jor','Samba');
insert into musica values (123,'O Mundo É Um Moinho','Cartola','Samba');
insert into musica values (124,'Preciso Me Encontrar','Cartola','Samba');
insert into musica values (125,'Eu','Mariana Froes','Samba');
insert into musica values (126,'Moça','Mariana Froes','Samba');
insert into musica values (127,'Onde Anda Você','Vinicius Moraes','Samba');
insert into musica values (128,'Chega De Saudade','João Gilberto','Samba');
insert into musica values (129,'Naquela Mesa','Nelson Gonçalves','Samba');

select * from musica;
select titulo, artista from musica;
select genero, artista from musica;
select * from musica where genero = ('samba');       
select * from musica where artista = ('Arctic Monkeys');
select titulo from musica where genero = ('Jazz');
select titulo, genero from musica where artista = ('Amy Winehouse');
select * from musica where idMusica between 108 and 120;
select * from musica where idMusica <= (120);
select * from musica where idMusica > (115);
select * from musica where genero = ('rock') and artista like '_r%' and idMusica between 100 and 120;
select * from musica where artista like 'A%';
select * from musica where genero like 'Ja%';

insert into musica values (300,'lslsls','klklklkl','lkslkdl');
delete from musica where idMusica = 300;

-- create table lero lero(
-- ed int primary key,
-- lero lero varchar(49)
-- );

-- drop table lero lero;

-- alter table musica drop column lero lero;
-- alter table musica add column lero lero;
-- alter table musica alter column lero lero;

-- update musica
-- 		set lero lero = 4
--    	where id = 1

-- exemplo com int

update musica 
	set artista = 'roll'
    where idMusica = 100;
    
    -- exemplo com varchar
    
-- order by caderno
