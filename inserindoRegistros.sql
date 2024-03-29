USE sucos;

-- exercício para inserir dados nas tabelas criadas.

INSERT INTO produto(
PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES(
'1040107', 'Light - 350 ml - Melancia', 'Lata', '350 ml', 'Melancia', 4.56);

SELECT *  FROM produto;

-- aqui o SELECT foi utilizado para visualizar o INSERT.

--mais um exemplo de inserção de dados conforme proposto:

INSERT INTO vendedor (MATRICULA, NOME, PERCENTUAL_COMISSAO)
VALUES('00233', 'João Geraldo da Fonseca', 0.10);

SELECT * FROM vendedor; 

--inserindo mais dados:

-- -tabela produtos:

INSERT INTO produto(PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA)
VALUES
('1040107', 'Light - 350 ml - Melancia', 'Lata', '350 ml', 'Melancia', 4.56),
('1037797', 'Clean - 2 Litros - Laranja', 'PET', '2 Litros', 'Laranja', 16.01),
('1000889', 'Sabor da Montanha - 700 ml - Uva', 'Garrafa', '700 ml', 'Uva', 6.31),
('1004327', 'Videira do Campo - 1,5 Litros - Melancia', 'PET', '1,5 Litros', 'Melancia', 19.51);

SELECT *  FROM produto;

-- - tabela vendedores:
INSERT INTO vendedor (MATRICULA, NOME, PERCENTUAL_COMISSAO)
VALUES
('00235', 'Márcio Almeida Silva', 0.08),
('00236', 'Cláudia Morais', 0.08);

-- inserindo mais dados na tabela produtos e alterando (corrigindo) os valores:

USE sucos;

INSERT INTO produto(PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA)
VALUES
('544931', 'Frescor do Verão - 350 ml - Limão', 'PET', '350 ml','Limão',3.20),
('1078680', 'Frescor do Verão - 470 ml - Manga', 'Lata', '470 ml','Manga',5.18);

UPDATE produto
SET EMBALAGEM = 'Lata', PRECO_LISTA = 2.46
WHERE PRODUTO = '544931';

UPDATE produto 
SET EMBALAGEM = 'Garrafa'
WHERE PRODUTO = '1078680';

SELECT * FROM produto;

-- alterando dados já inseridos na tabela de vendedores:

UPDATE vendedor
SET PERCENTUAL_COMISSAO = 0.11
WHERE MATRICULA = '00236';

UPDATE vendedor
SET NOME = 'José Geraldo da Fonseca Junior'
WHERE MATRICULA = '00233';

SELECT * FROM vendedor;