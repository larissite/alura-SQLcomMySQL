USE sucos;

ALTER TABLE produto
ADD PRIMARY KEY  (PRODUTO);

SELECT * FROM produto;

INSERT INTO produto (
PRODUTO,  NOME, EMBALAGEM, TAMANHO, SABOR,
PRECO_LISTA) VALUES
('1078680', 'Frescor do Verão - 470 ml - Manga', 'Lata', '470 ml','Manga',5.18);

-- Error Code: 1062. Duplicate entry '1078680' for key 'produto.PRIMARY'

-- PRIMARY KEY: constraints (restrições) do SQL.

-- Nas boas práticas de MySQL, o ideal é sempre especificar a chave primária de uma tabela,
-- podendo usar o comando CREATE TABLE e, depois, o ALTER TABLE para criar a chave primária.
