-- criando a tabela de cadastro de clientes, conforme proposto no exercício das aulas, pelos comandos SQL.
CREATE TABLE Cliente
(CPF VARCHAR(11),
NOME VARCHAR(100),
ENDERECO1 VARCHAR(150),
ENDERECO2 VARCHAR(150),
BAIRRO VARCHAR(50),
CIDADE VARCHAR(50),
ESTADO VARCHAR(50),
CEP VARCHAR(8),
IDADE SMALLINT,
SEXO VARCHAR(1),
LIMITE_CREDITO FLOAT,
VOLUME_COMPRA FLOAT,
PRIMEIRA_COMPRA BIT(1)
);

-- criando mais uma tabela para o sistema de vendas do exercício, a de vendedores, pelos comandos SQL:

CREATE TABLE Vendedor (
MATRICULA VARCHAR(5),
NOME VARCHAR(100),
PERCENTUAL_COMISSAO FLOAT
);

-- a tabela "produto", foi criada com o assistente do workbench MYSQL, abaixo segue o comando gerado:

CREATE TABLE `sucos`.`produto` (
  `PRODUTO` VARCHAR(20) NULL,
  `NOME` VARCHAR(150) NULL,
  `EMBALAGEM` VARCHAR(50) NULL,
  `TAMANHO` VARCHAR(50) NULL,
  `SABOR` VARCHAR(50) NULL,
  `PRECO_LISTA` FLOAT NULL);

-- apagando tabelas: para este exemplo foram criadas mais duas tabelas: clientes2 e clientes3.
-- a tabela clientes2 foi apagada direto pelo workbench, com o "Drop Table" ao clique do mouse.
--já a tabela clientes 3 foi apagada com o comando abaixo:

USE sucos;

DROP TABLE cliente3;