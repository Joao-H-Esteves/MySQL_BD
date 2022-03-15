use funcionarios_agasus;

desc colaboradores;

select * from cursos;
select * from gafanhotos;

use cadastro;

select *from cursos
where nome like '%H%';

select * from cursos 
where nome not like '%a%';

SELECT * FROM cursos
WHERE nome LIKE 'p%p_';

SELECT * FROM cursos
WHERE nome LIKE 'p__t%';

select * from gafanhotos
where nome like '%Silva%';

select distinct nacionalidade from gafanhotos; 

select count(*) from  gafanhotos;

select count(*) from cursos
where carga >= '40';

select count(*) from gafanhotos
where nascionalidade = 'brasil';

select max(totaulas) from cursos
where ano = '2018' and nome;

select nome , min(totaulas) from cursos;

select sum(totaulas) from cursos
where ano ='2016';

select * from gafanhotos 
where sexo like 'f';

select * from gafanhotos 
where nascimento >= '2000-01-01' and nascimento <= '2015-12-31';

select count(*) from gafanhotos 
where nascimento >= '2000-01-01' and nascimento <= '2015-12-31';

select * from gafanhotos
where profissao like 'progra%' and sexo = 'm';


