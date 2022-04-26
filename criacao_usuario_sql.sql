create database sptech;

use sptech;

create table aluno(
id int primary key auto_increment,
descricao varchar(100)
);

insert into aluno (descricao) values
('Grupo 1'),
('Grupo 2'),
('Grupo 3');

-- Criar usuário
create user 'sistema'@'%' identified by 'sistema123';
create user 'sistema'@'localhost' identified by 'sistema123';

-- Drop usuário
drop user 'sistema'@'%';
drop user if exists 'sistema'@'localhost';

-- mostra os privilégios do usuário
show grants for 'sistema'@'localhost';
show grants for sistema;

grant select on sptech.* to 'sistema'@'%';

-- Para que a configuração dê certo, use o flush privileges
flush privileges;

grant update on sptech.* to 'sistema'@'%';

grant delete on sptech.* to 'sistema'@'%';

grant insert on sptech.* to 'sistema'@'%';

grant create on sptech.* to 'sistema'@'%';

grant drop on sptech.* to 'sistema'@'%';

revoke all, grant option from 'sistema'@'%';

grant select, delete, update, insert on aluno to 'sistema'@'%';

grant update (descricao) on aluno to 'sistema'@'%';

show grants for 'sistema'@'%';
					
								