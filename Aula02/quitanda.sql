-- CRIAR BANCO DE DADO
CREATE DATABASE db_quitanda;

-- SELECIONAR O BANCO DE DADOS
USE db_quitanda;

-- CRIAR TABELA tb_produtos
CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
quantidade int,
data_validade date,
preco decimal NOT NULL,
PRIMARY KEY (id) 
);

-- INSERIR DADOS NA TABELA
INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
VALUES ("arroz", 50, "2023-04-29", 20.00);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
VALUES ("chuchu", 20, "2022-04-18", 3.00);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
VALUES ("tomate", 80, "2022-03-19", 16.00);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
VALUES ("cenoura", 30, "2022-05-29", 13.00);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
VALUES ("morango", 1, "2022-03-20", 8.50);

-- LISTAR TODOS OS PRODUTOS
SELECT * FROM tb_produtos;

SELECT nome, preco FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 10.00;

SELECT * FROM tb_produtos WHERE preco > 10.00 AND quantidade < 800;

SELECT nome, CONCACT('R$ ', FORMAT(preco, 2, 'pt_BR')) AS preço FROM tb_produtos;

-- ATUALIZAR OS DADOS DA TABELA
UPDATE tb_produtos SET preco = 8.50 WHERE id = 7;

-- DESLIGAR TRAVA DO MySQL
SET SQL_SAFE_UPDATES = 0;

UPDATE tb_produtos SET preco = 8.50;

DELETE FROM tb_produtos WHERE id = 3;

 -- ALTERACOES NA ESTRUTURA DA TABELA
ALTER TABLE tb_produtos MODIFY preco decimal (8,2);

ALTER TABLE tb_produtos ADD descricao varchar (255);

ALTER TABLE tb_produtos DROP descricao;

ALTER TABLE tb_produtos CHANGE preco preco decimal(8,2);

DROP DATABASE db_quitanda;



