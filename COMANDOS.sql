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


/* EXERCICIOS */

/* lOCALIZAR TODAS AS MULHERES DA LISTA*/
select * from gafanhotos 
where sexo like 'f';

/* TODOS AS PESSOAS NASCIDAS ENTRE AS DATAS: */
select * from gafanhotos 
where nascimento >= '2000-01-01' and nascimento <= '2015-12-31';

/*Contar quantas pessoas são nascidas nessa data*/
select count(*) from gafanhotos 
where nascimento >= '2000-01-01' and nascimento <= '2015-12-31';

/* TODOS OS  PROGRAMADORES HOMENS DA LISTA  */
select * from gafanhotos
where profissao like 'progra%' and sexo = 'm';

/* QUANTAS PESSOAS QUE A 1ª LETRA SEJA 'J' E SEJA BRASILEIRA */
select * from gafanhotos
where nome like 'j%' and nacionalidade = 'brasil';

/*NOME E NASCIONALIDADE DE TODOS OS HOMENS COM 'SILVA' NO NOME E PESEM MENOS DE 100 KG*/
select nome , nacionalidade from gafanhotos
where nome like '%_silva%' and peso < 100;	
