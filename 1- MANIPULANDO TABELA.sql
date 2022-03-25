use funcionarios_agasus;
insert into pessoas
(nome,nascimento,peso,sexo,altura,nascionalidade)
values
('lkjljjn','1111-11-11','81.11','m','1.71','ijohuuuui');

select * FROM pessoas;


insert into pessoas
(nome,nascimento,peso,sexo,altura,nascionalidade)
values
('Pedro lima','1990-01-21','74.00','m','1.71','brasil');

select * from pessoas;
insert into pessoas values
('Sueli Altino', '2001-04-23','52.2','f','1.54',default);












alter table pessoas
add column ID int unsigned primary key auto_increment ;
desc pessoas;
alter table pessoas
drop column ID;





select * from pessoas;



desc pessoas;

alter table pessoas
add column ID int  primary key auto_increment after nome;

desc pessoas;
alter table pessoas
drop column id;

ALTER table pessoas
add column id int primary key auto_increment first;

desc pessoas;
alter table pessoas
modify column nascionalidade  pais varchar (20) not null default 'Brasil';



alter table pessoas
RENAME TO colaboradores;

desc colaboradores;


select *from colaboradores;
USE funcionarios_agasus;
select *from colaboradores;

