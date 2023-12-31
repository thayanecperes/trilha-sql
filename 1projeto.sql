/* Modelagem Básica
ENTIDADE = TABELA 
CAMPOS = ATRIBUTOS */

CLIENTE

NOME - CARACTER(30)
CPF - NUMERICO(11)
EMAIL - CARACTER(30)
TELEFONE - CARACTER(30)
ENDEREÇO - CARACTER(100)
SEXO - CARACTER(1)

/* PROCESSOS DE MODELAGEM */

/* FASE 01 E 02 - FEITO POR ADM DE DADOS */

MODELAGEM CONCEITUAL - RASCUNHO 
MODELAGEM LÓGICA - QUALQUER PROGRAMA DE MODELAGEM

/* FASE 03 - DRA / AD */

MODULAGEM FÍSICA - SCRIPTS DE BANCO

/* INICIANDO A MODELAGEM FÍSICA */

/* CRIANDO BANCO DE DADOS */

CREATE DATABASE PROJETO;

/* CONECTANDO AO BANCO */

USE PROJETO;

/* CRIANDO A TABELA DE CLIENTES */

CREATE TABLE CLIENTE(
	NOME VARCHAR(30),
	SEXO CHAR(1),
	EMAIL VARCHAR(30),'
	CPF INT(11),'
	TELEFONE VARCHAR(30),
	ENDEREÇO VARCHAR(100)

);

/* VERIFICANDO AS TABELAS DO BANCO */

SHOW TABLES;

/* EXIBINDO A ESTRUTURA DE UMA TABELA. */
DESC CLIENTE;

/* FORMA 01 - SEM INFORMAR AS COLUNAS */

INSERT INTO CLIENTE VALUES('JOAO', 'M', 'JOAO@GMAIL.COM', 88638273, '2293110', 'MAIA LACERDA - ESTACIO - RIO DE JANEIRO - RJ');

INSERT INTO CLIENTE VALUES ('CELIA', 'F', 'CELIA@GMAIL.COM', 541521456, '25078869', 'RIACHUELO - CENTRO - RIO DE JANEIRO - RJ');

INSERT INTO CLIENTE VALUES ('JORGE', 'M', NULL, 885755896, '58748895', 'OSCAR CURY - BOM RETIRO - PATOS DE MINAS - MG');

/* FORMA 02 - INDICANDO AS COLUNAS. */

INSERT INTO CLIENTE (NOME,SEXO,ENDEREÇO,TELEFONE,CPF) VALUES ('LILIAN', 'M','MAIA LACERDA - TIJUCA - RIO DE JANEIRO - RJ','98863273',152293110);

/* FORM 03 - INSERT COMPACTO - SOMENTO SQL */

INSERT INTO CLIENTE VALUES ('ANA', 'F', 'ANA@GLOBO.COM', 85548962, '548556985', 'PRES ANTONIO CARLOS - CENTRO - SAO PAULO - SP'),
		('CARLA', 'F', 'CARLA@TERRATI.COM.BR', 7745828, '66587458', 'SAMUEL SILVA - CENTRO - BELO HORIZONTE - MG');

INSERT INTO CLIENTE VALUES ('THAIS', 'F', 'THAIS@GMAIL.COM',12345678910,NULL, NULL);

/* VISUALIZANDO COLUNAS
PROJETANDO NA TELA */
SELECT NOW() AS DATA_HORA, 'THAY PERES' AS 'RESPONSAVEL';

/* PUXANDO DA TABELA */
SELECT NOME, SEXO, EMAIL FROM CLIENTE;

SELECT NOME AS CLIENTE, ENDEREÇO, CPF FROM CLIENTE;

SELECT * FROM CLIENTE;

/* FILTRANDO - WHERE */

SELECT NOME, SEXO FROM CLIENTE 
WHERE SEXO = 'F';

SELECT NOME, ENDEREÇO FROM CLIENTE
WHERE ENDEREÇO = 'RJ';

SELECT NOME, ENDEREÇO, CPF, NOW() AS DATA_HORA FROM CLIENTE
WHERE SEXO = 'F';

/* UTILIZANDO O LIKE SUBISTITUI O = */

SELECT NOME, ENDEREÇO, SEXO, CPF FROM CLIENTE
WHERE ENDEREÇO LIKE 'RJ';

/* CARACTER ESPECIAL % = QUALQUER COISA */

SELECT NOME, ENDEREÇO, SEXO, CPF FROM CLIENTE
WHERE ENDEREÇO LIKE '%RJ';

SELECT NOME, ENDEREÇO, SEXO, CPF FROM CLIENTE
WHERE ENDEREÇO LIKE '%CENTRO%';


/* FILTRANDO CAMPO NULL */

SELECT * FROM CLIENTE
WHERE EMAIL IS NULL;

SELECT * FROM CLIENTE
WHERE EMAIL IS NOT NULL; 

/* UTILIZANDO O UPDATE PARA ATUALIZAR VALORES */

UPDATE CLIENTE
SET EMAIL = 'LILIN@GMAIL.COM'
WHERE NOME = 'LILIAN';

/* DELETANDO REGISTROS */

DELETE FROM CLIENTE
WHERE NOME = 'ANA'; 

