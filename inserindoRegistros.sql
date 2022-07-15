USE sucos;

-- exercício para inserir dados nas tabelas criadas.

INSERT INTO produto(
PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES(
'1040107', 'Light - 350 ml - Melancia', 'Lata', '350 ml', 'Melancia', 4.56);

SELECT *  FROM produto;

--mais um exemplo de inserção de dados conforme proposto:

INSERT INTO vendedor (MATRICULA, NOME, PERCENTUAL_COMISSAO)
VALUES('00233', 'João Geraldo da Fonseca', 0.10);

SELECT * FROM vendedor; 
