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

