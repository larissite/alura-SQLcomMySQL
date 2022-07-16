USE sucos;

ALTER TABLE cliente
ADD PRIMARY KEY  (CPF);

ALTER TABLE cliente
ADD COLUMN (DATA_NASCIMENTO DATE);

INSERT INTO cliente (CPF, NOME, ENDERECO1, ENDERECO2, BAIRRO, CIDADE, ESTADO, CEP, IDADE, 
SEXO, LIMITE_CREDITO, VOLUME_COMPRA, PRIMEIRA_COMPRA, DATA_NASCIMENTO)
VALUES 
('00388934505', 'João da Silva', 'Rua projetada A número 10', '', 'Vila Roman', 
'CARATINGA', 'Amazonas', '2222222', 30, 'M', 10000.00, 2000,  0, '1989-10-05');

SELECT * FROM cliente;

-- A coluna PRIMEIRA_COMPRA é do tipo 'bit', logo só aceita 0 ou 1, sendo 0 para caso negativo e 1
-- para caso positivo. 

-- Manipulando dados da tabela 'vendedor' no exercício abaixo:

USE sucos;

ALTER TABLE vendedor
ADD PRIMARY KEY (MATRICULA);

ALTER TABLE vendedor
ADD COLUMN (DATA_ADMISSAO DATE),
ADD COLUMN(DE_FERIAS BIT);

DELETE FROM vendedor WHERE MATRICULA = '00233';

INSERT INTO vendedor (MATRICULA, NOME, DATA_ADMISSAO, PERCENTUAL_COMISSAO, DE_FERIAS)
VALUES
('00235','Márcio Almeida Silva','2014-08-15',0.08,0),
('00236','Cláudia Morais','2013-09-17',0.08,1),
('00237','Roberta Martins','2017-03-18',0.11,1),
('00238','Pericles Alves','2016-08-21',0.11,0);

SELECT * FROM vendedor;