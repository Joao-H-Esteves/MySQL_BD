/*USANDO UMA RELAÇÃO DE MUITO PARA MUITOS*/

/*TABELA DE JUNÇÃO*/

create table juncao_assite(
id int not null auto_increment,
data date, 
idgafanhoto int,
idcurso int,
primary key (id),
foreign key (idgafanhoto) references gafanhotos(id),
foreign key (idcurso) references cursos(idcurso)
)default charset = 'utf8';

insert into juncao_assite values
(default, '2022-03-25' , '1','13');

select * from juncao_assite;

/* JUNTANDO A 1ª TABLE COM A TABELA DE JUNÇÃO */

select g.id, g.nome, ja.idgafanhoto, ja.idcurso 
from gafanhotos as g join juncao_assite as ja
on g.id = ja.idgafanhoto
order by g.nome;

/*SEGUNDO PASSO*/
SELECT g.id, g.nome, ja.idcurso ,c.nome
from gafanhotos as g join juncao_assite as ja
on g.id = ja.idgafanhoto
join cursos as c
on c.idcurso = ja.idcurso
order by g.nome;


SELECT 
    ja.idgafanhoto, g.nome, g.cursopreferido, ja.idcurso, c.nome
FROM
    gafanhotos AS g
        JOIN
    juncao_assite AS ja ON g.id = ja.idgafanhoto
        JOIN
    cursos AS c ON c.idcurso = ja.idcurso
ORDER BY ja.idgafanhoto;
