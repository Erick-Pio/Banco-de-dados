create database Musica;
use musica;
create table musica(
idMusica int primary key auto_increment,
titulo varchar (40),
artista varchar (40),
genero varchar (40)
);

create table album(
idAlbum int primary key auto_increment,
nome varchar (40),
gravadora varchar (40)
) auto_increment = 100;

insert into musica (titulo, artista, genero) values
('Run to the hills','Iron Maiden','Rock'),
('Everlong','Foo Fighters','Rock'),
('Secret door','Arctic Monkeys','Rock'),
('Selfless','The Strokes','Rock'),
('Aint got no','Nina Simone','Jazz'),
('Fellin Good','Nina Simone','Jazz'),
('I put a spell on you','Nina Simone','Jazz'),
('Chove Chuva','Jorge Ben Jor','Samba'),
('Oba La Vem Ela','Jorge Ben Jor','Samba'),
('O Telefone Tocou Novamente','Jorge Ben Jor','Samba');

alter table musica add fkAlbum int;
alter table musica add foreign key (fkAlbum) references Album (idAlbum);

insert into Album (nome, gravadora) values
('The new abnormal','cult records'),
('Humbug','cult records'),
('Piece of mind','cult records'),
('The colour and the shape','cult records'),
('I put a spell on you','phillips records'),
('Samba esquema novo','phillips records');

update musica set fkalbum = 105 where idmusica > 7;
update musica set fkalbum = 104 where idmusica in (5,6,7);
update musica set fkalbum = 103 where idmusica = 2;
update musica set fkalbum = 100 where idmusica = 4;
update musica set fkalbum = 102 where idmusica = 1;
update musica set fkalbum = 101 where idmusica = 3;


select * from musica, album where fkalbum = idalbum;
select * from musica, album where fkalbum = idalbum and album.nome = 'I put a spell on you';
select * from musica, album where fkalbum = idalbum and gravadora = 'cult records';
