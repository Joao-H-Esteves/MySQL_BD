desc colaboradores;

create table if not exists cursos (
nome varchar(30) not null unique,
descricao text,
carga int UNSIGNED,
totaulas int,
ano year default '2022'
)default charset = utf8;


desc cursos;


alter table cursos
add column idcurso int first;
desc cursos;

alter table cursos
add primary key( idcurso);
desc  cursos;
desc colaboradores;
select * from cursos;
insert into cursos values
('1','HTML','Curso de html e css3','40','35','2021'),
('2','JavaScript','Curso de JS','40','45','2020'),
('3','DevOps','Curso de metodologias ageis','35','25','2022'),
('4','Excel','Curso basico de excel','20','15','2022'),
('5','Back-End','Curso de Node.JS','140','135','2019'),
('6','Full-Stack','Curso de html, Js,TypeScript, React, API, BD','40','35','2021'),
('7','Linguagem C','Curso de C','30','46','2020'),
('8','Linux','Curso basico de linux','20','35','2022'),
('9','JQuery','Curso de biblioteca de css3','20','25','2021'),
('10','windows','Curso basico de linux','20','35','2022');

desc  cursos;
select * from cursos;

update cursos
set nome = 'HTML-5'
where idcurso ='1';
select * from colaboradores;

update colaboradores
set nome = 'João Henrique Gusmão Esteves' , nascimento ='1985-12-9', nascionalidade = 'brasileiro'
where id = '1';

select * from colaboradores;
alter table colaboradores
add primary key (id);
desc colaboradores;

update colaboradores
set nome = 'Carlos Miranda' , nascimento=  '1973-04-23', nascionalidade = 'espanhol'
where id = '3';
insert into colaboradores values
( '5','Carla silva', '1990-9-04', '67','f','1.69', 'brasileira'),
( '6','Kaik Augusto', '1980-06-29', '127','m','1.69', 'brasileiro'),
( '7','Marsa Petrovisk', '2020-06-29', '37','f','0.69', 'russa'),
( '8','Mervic Petrovisk', '1985-06-29', '97','m','1.99', 'russo'),
( '9','Zé povinho', '1990-06-29', '77','m','1.69', 'brasileiro');

select * from colaboradores;

drop database funcionarios_agasus;
