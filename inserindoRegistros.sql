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
