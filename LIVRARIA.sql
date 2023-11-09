CREATE DATABASE LIVRARIA;

USE LIVRARIA;

CREATE TABLE LIVROS( 
NOME_DO_LIVRO VARCHAR(30),
NOME_DO_AUTOR VARCHAR(30),
SEXO_DO_AUTOR CHAR(1),
NUMERO_DE_PAGINAS INT (4),
NOME_DA_EDITORA VARCHAR(30),
VALOR_DO_LIVRO FLOAT(5,2),
UF_DA_EDITORA CHAR(2),
ANO_PUBLICACAO CHAR(4)
);

INSERT INTO LIVROS VALUES ('Cavaleiro Real','Ana ClaudiA','F',465,'Atlas',49.9,'RJ','2009'),
('SQL para leigos','João Nunes','M',450,'Addison',98,'SP','2018'),
('Receitas Caseiras','Celia Tavares','F',210,'Atlas',45,'RJ','2008'),
('Pessoas Efetivas','Eduardo Santos','M',390,'Beta',78.99,'RJ','2018'),
('Habitos Saudáveis','Eduardo Santos','M',630,'Beta',150.98,'RJ','2019'),
('A Casa Marrom','Hermes Macedo','M',250,'Bubba',60,'MG','2016'),
('Estacio Querido','Geraldo Francisco','M',310,'Insignia',100,'ES','2015'),
('Pra sempre amigas','Leda Silva','F',510,'Insignia',78.98,'ES','2011'),
('Copas Inesqueciveis','Marco Alcantara','M',200,'Larson',130.98,'RS','2018'),
('O poder da mente','Clara Mafra','F',120,'Continental',56.58,'SP','2017');

/* 1 – Trazer todos os dados. */
SELECT * FROM LIVROS;

/*2 – Trazer o nome do livro e o nome da editora*/
SELECT NOME_DO_LIVRO, NOME_DA_EDITORA
FROM LIVROS; 

/*3 – Trazer o nome do livro e a UF dos livros publicados por autores do sexo masculino.*/
SELECT NOME_DO_LIVRO, UF_DA_EDITORA 
FROM LIVROS
WHERE SEXO_DO_AUTOR = 'M';

/*4 - Trazer o nome do livro e o número de páginas dos livros publicados por autores do sexo feminino.*/
SELECT NOME_DO_LIVRO, NUMERO_DE_PAGINAS
FROM LIVROS
WHERE SEXO_DO_AUTOR = 'F';

/*5 – Trazer os valores dos livros das editoras de São Paulo.*/
SELECT NOME_DO_LIVRO, VALOR_DO_LIVRO 
FROM LIVROS
WHERE UF_DA_EDITORA = 'SP';

/*6 – Trazer os dados dos autores do sexo masculino que tiveram livros publicados por São Paulo ou Rio de Janeiro (Questão Desafio). */
SELECT NOME_DO_AUTOR, SEXO_DO_AUTOR, UF_DA_EDITORA
FROM LIVROS
WHERE SEXO_DO_AUTOR = 'M'
AND (UF_DA_EDITORA = 'SP' or UF_DA_EDITORA ='RJ');


/* GERADORES LOGICOS 
OR - PARA SAIDA DA QUERY SEJA VERDADEIRA, BASTA QUE APENAS UMA CONDIÇÃO SEJA VERDADEIRA
AND -  TODAS AS CONDIÇÕES PRECISAM SER VERDADEIRAS*/


/* OR */

SHOW DATABASES;

USE PROJETO;

SELECT NOME, SEXO, ENDEREÇO FROM CLIENTE 
WHERE SEXO = 'M' OR ENDEREÇO LIKE '%RJ';

SELECT NOME, SEXO, CPF FROM CLIENTE
WHERE SEXO = 'M' AND ENDEREÇO LIKE '%RJ';

SELECT NOME, SEXO, ENDEREÇO FROM CLIENTE
WHERE SEXO = 'F' OR ENDEREÇO LIKE '%ESTACIO%';

/* CONTANDO OS REGISTROS DE UMA TABELA */
/*COUNT(*) CONTA A QUANTIDADES DE LINHAS*/
SELECT COUNT(*) FROM CLIENTE;

/*PARA CONTAR QUANTIDADE DE LINHAS DE UM DETERMINADA COLUNA*/
SELECT SEXO, COUNT(*)
FROM CLIENTE
GROUP BY SEXO;