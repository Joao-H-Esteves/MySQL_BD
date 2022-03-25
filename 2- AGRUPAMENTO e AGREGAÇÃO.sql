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

/*1- lOCALIZAR TODAS AS MULHERES DA LISTA*/
select * from gafanhotos 
where sexo like 'f';

/*2- TODOS AS PESSOAS NASCIDAS ENTRE AS DATAS: */
select * from gafanhotos 
where nascimento >= '2000-01-01' and nascimento <= '2015-12-31';

/*3- TODOS OS  PROGRAMADORES HOMENS DA LISTA  */
select * from gafanhotos
where profissao like 'progra%' and sexo = 'm';

/*Contar quantas pessoas são nascidas nessa data*/
select count(*) from gafanhotos 
where nascimento >= '2000-01-01' and nascimento <= '2015-12-31';



/* 4- QUANTAS mulheres QUE A 1ª LETRA SEJA 'J' E SEJA BRASILEIRA */
select * from gafanhotos
where nome like 'j%' and nacionalidade = 'brasil' and sexo='f';

/*5 - NOME E NASCIONALIDADE DE TODOS OS HOMENS COM 'SILVA' NO NOME E PESEM MENOS DE 100 KG*/
select nome , nacionalidade from gafanhotos
where nome like '%silva%' and peso < 100 AND sexo = 'm';	

/* 6-MAIOR ALTURA ENTRE HOMENS QUE NÃO NASCERAM NO BRASIL*/
select nome, max(altura) from gafanhotos 
where sexo ='m' and nacionalidade = 'brasil';

/*7- QUAL AM MEDIA DE PESO DAS PESSOAS CADASTRADAS*/
select avg(peso) from gafanhotos;

/* 8- QUAL O MENOR PESO ENTRA AS MULHERES QUE NASCEREM foram do BRASIL 
ENTRE 1-JAN-90 E 31-DEZ-2000*/
select  min(peso), nome , nacionalidade from gafanhotos
where  nacionalidade != 'brasil' and sexo = 'f' and 
nascimento between '1990-01-01' and '2000-12-31';

/*9- QUANTAS MULHERES TEM MAIS DE 1.90 DE ALTURA*/
select count(nome) from gafanhotos
where altura >= '1.90' and sexo = 'f';



