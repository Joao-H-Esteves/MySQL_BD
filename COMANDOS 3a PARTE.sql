/*COMANDO2


AGRUPAMENTOS     */

select * from cursos;

select distinct  totaulas, count(*) from cursos
group by totaulas
order by totaulas;

select totaulas, count(*) from cursos
group by totaulas
order by totaulas desc;

select * from cursos
where totaulas > 20;

select totaulas, count(*) from cursos
where totaulas >20
group by totaulas;

/* Agrupando pela quantidade de carga existem em cursos
de 30 horas */

select carga ,count(nome) from cursos
where totaulas = 30
group by carga;

/* USANDO O HAVING*/
select carga, count(nome) from cursos
group by carga
having count(nome) >3;

select ano , count(*) from cursos
where totaulas >= 30
group by ano
having ano >2013
order by count(*) ;

/*MOSTRANDO A MEDIA DE HORAS DOS CURSOS*/
select avg(carga) from cursos;

/*somente cursos acima de 2015 que tenham a carga maior que a media*/
select carga , count(*) from cursos
where ano > 2015
group by carga
having carga > (select avg(carga) from cursos) ;

/* ----- EXERCICIOS -----*/

/*LISTA DE PROFISSÕES DAS PESSOAS E SUAS QUANTIDADES */

SELECT 
    profissao, COUNT(*)
FROM
    gafanhotos
group by profissao;

/* QUANTOS HOMENS E MULHERES NASCERAM APOS 01-JAN-2005 */

SELECT 
    sexo, COUNT(*)
FROM
    gafanhotos
WHERE
    nascimento >= 2005 - 01 - 01
GROUP BY sexo;

/*LISTA DE ESTRANGEIROS , COM O PAIS DE ORIGEM E TOT DE PESSOAS
NASCIDAS LA. APENAS PAISES COM MAIS DE 3 NASCIDOS LA*/

select nacionalidade , count(*) from gafanhotos
where nacionalidade != 'brasil'
group by nacionalidade
having count(nacionalidade) >'3';

/* LISTA AGRUPADA PELA ALTURA , MOSTRANDO QDT DE PESSOAS ACIMA
DE 100 KG E QUE ESTÃO ACIMA DA MEDIA DA ALTURA DOS CADASTRADOS*/

select avg(altura) from gafanhotos;

select altura, peso from gafanhotos
where peso >100
having altura > (select avg(altura) from gafanhotos)
order by altura;

/*correção*/
select altura,count(*) from gafanhotos
where peso > '100'
group by altura
having altura > (select avg(altura)from gafanhotos);
