-- Filtros Compostos concantenando a cláusula "WHERE" com operadores lógicos AND e OR:
USE sucos;


SELECT * FROM tbproduto WHERE PRECO_LISTA >= 16.007 AND PRECO_LISTA <= 16.009;
SELECT * FROM tbcliente WHERE IDADE >= 18 AND IDADE <= 22 AND SEXO = 'M';
SELECT * FROM tbcliente WHERE cidade = 'Rio de Janeiro' OR BAIRRO = 'Jardins';

SELECT * FROM tbcliente WHERE (IDADE >= 18 AND IDADE <= 22 AND SEXO = 'M')
OR (cidade = 'Rio de Janeiro' OR BAIRRO = 'Jardins');

SELECT * FROM vendedor WHERE YEAR(DATA_ADMISSAO) < 2016 AND DE_FERIAS = 1;

-- Também é possível utilizar com as cláusulas "UPDATE" e "DELETE".