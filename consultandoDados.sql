USE sucos;

-- este exercício é focado em consulta de banco de dados. para tanto foram inseridos maior volume
-- de dados da 'tbcliente' diretamente de um arquivo/script disponibilizado pelo instrutor.

-- tabelas 'cliente' e 'produto' foram "dropadas", 'tbcliente' e 'tbproduto' foram criadas.

SELECT * FROM tbcliente;

SELECT CPF, NOME, IDADE, CIDADE FROM tbcliente;

SELECT CPF, NOME, IDADE, CIDADE FROM tbcliente LIMIT 6;
-- LIMIT: limite de linhas a serem exibidas

SELECT CPF AS CPF_CLIENTE, NOME AS NOME_CLIENTE FROM tbcliente; 
-- AS: alias. Só existe durante a consulta e serve para substituir nomes de colunas ou tabelas temporariamente.

SELECT NOME, CPF, SEXO, IDADE, DATA_NASCIMENTO FROM tbcliente;
--Consulta com SELECT não precisa estar necessariamente na mesma ordem da tabela.

SELECT NOME, MATRICULA FROM vendedor;
-- 'vendedor' segue sendo a mesma tabela utilizada nos exercícios anteriores.

-- _Abaixo, continuando as consultas:_

SELECT * FROM tbproduto WHERE PRODUTO = '544931';

SELECT * FROM tbcliente WHERE CIDADE = 'Rio de Janeiro';

SELECT * FROM tbproduto WHERE SABOR = 'Limão';

UPDATE tbproduto SET SABOR = 'Cítricos' WHERE SABOR = 'Limão';
SELECT * FROM tbproduto WHERE SABOR = 'Cítricos';

-- podemos ter na cláusula WHERE uma condição que retornará mais de um registro e, 
-- não necessariamente, precisa ser chave primária, é permitido todos os campos que constam na tabela.

SELECT * FROM vendedor WHERE NOME = 'Claudia Morais';

-- _Continuando consulta de dados com filtros de maior, menor e diferente:_

SELECT * FROM tbcliente WHERE IDADE = 22;
SELECT * FROM tbcliente WHERE IDADE > 22;
SELECT * FROM tbcliente WHERE IDADE < 22;
SELECT * FROM tbcliente WHERE IDADE >= 22; -- inclusive 22
SELECT * FROM tbcliente WHERE IDADE <> 22; -- exceto 22, símbolo de diferente.

SELECT * FROM vendedor WHERE PERCENTUAL_COMISSAO > 0.10;

-- É possível tais filtros com texto? SIM.
--  No MySQL existe ordem alfabética para as letras, então, "B" é maior que o "A" (B > A),
-- o "C" é maior que o "B" (C > B), o "X" é maior que "R" e assim sucessivamente.

SELECT * FROM tbcliente WHERE NOME > 'Fernando Cavalcante';
SELECT * FROM tbcliente WHERE NOME >= 'Fernando Cavalcante';

-- Atenção para consultas do tipo "FLOAT". Por ser um ponto flutuante, o "WHERE" não consegue
-- retornar a igualdade o valor para ser consultado. É possível usar >, <, <>. 

SELECT * FROM tbproduto WHERE PRECO_LISTA = 16.008;
SELECT * FROM tbproduto WHERE PRECO_LISTA < 16.008;

-- Para consultas com o tipo "FLOAT" há a clásula "BETWEEN":
SELECT * FROM tbproduto WHERE PRECO_LISTA BETWEEN 16.007 AND 16.009;

--Com o tipo "DECIMAL" é possível consultas com "WHERE" e igualdade, por ser um número exato.

--Filtrando datas:
SELECT * FROM tbcliente WHERE DATA_NASCIMENTO = '1995-01-13';
SELECT * FROM tbcliente WHERE DATA_NASCIMENTO > '1995-01-13';
SELECT * FROM tbcliente WHERE DATA_NASCIMENTO <= '1995-01-13';

SELECT * FROM tbcliente WHERE YEAR(DATA_NASCIMENTO) = 1995;
SELECT * FROM tbcliente WHERE MONTH(DATA_NASCIMENTO) = 10;

SELECT * FROM vendedor WHERE YEAR(DATA_ADMISSAO) >= 2016;