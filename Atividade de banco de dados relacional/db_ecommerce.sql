 -- CRIANDO BANCO DE DADO
CREATE DATABASE db_ecommerce;

-- SELECIONAR BANCO DE DADO
use db_ecommerce;

-- CRIAR TABELA
CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
nome varchar(100) NOT NULL,
quantidade int NOT NULL,
marca varchar(100),
valor decimal (10,2) NOT NULL,
descricao varchar(255),
PRIMARY KEY (id)
);

-- INSERIR DADOS NA TABELA
INSERT INTO tb_produtos (nome, quantidade, marca, valor, descricao)
VALUES ("camiseta", 50, "nike", 600.00, "bom");

INSERT INTO tb_produtos (nome, quantidade, marca, valor, descricao)
VALUES ("bone", 30, "adidas", 100.00, "");

INSERT INTO tb_produtos (nome, quantidade, marca, valor, descricao)
VALUES ("tenis", 20, "nike", 1000.00, "");

INSERT INTO tb_produtos (nome, quantidade, marca, valor, descricao)
VALUES ("chapeu", 10, "nike", 300.00, "");

INSERT INTO tb_produtos (nome, quantidade, marca, valor, descricao)
VALUES ("tenis", 110, "puma", 700.00, "");

INSERT INTO tb_produtos (nome, quantidade, marca, valor, descricao)
VALUES ("camiseta", 20, "puma", 20.00, "");

INSERT INTO tb_produtos (nome, quantidade, marca, valor, descricao)
VALUES ("bolsa", 20, "adidas", 100.00, "");

INSERT INTO tb_produtos (nome, quantidade, marca, valor, descricao)
VALUES ("tenis", 20, "NB", 1000.00, "");

SELECT * FROM tb_produtos WHERE valor > 500;

SELECT * FROM tb_produtos WHERE valor < 500;

UPDATE tb_produtos SET descricao = "bom" WHERE id = 8 ;
