CREATE DATABASE db_pizzaria_legal;

use db_pizzaria_legal;

CREATE TABLE tb_categoria(
id bigint AUTO_INCREMENT,
descricao varchar(255),
PRIMARY KEY (id)
);

CREATE TABLE tb_pizza(
id bigint AUTO_INCREMENT,
nome varchar(255),
valor decimal (8,2),
quantidade int,
categoria_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
);

INSERT INTO tb_categoria (descricao)
VALUES	("PIZZA NAPOLITANA");

INSERT INTO tb_categoria (descricao)
VALUES	("PIZZA FRITA");

INSERT INTO tb_categoria (descricao)
VALUES	("PIZZA DOCE");

INSERT INTO tb_categoria (descricao)
VALUES	("PIZZA SALGADA");

INSERT INTO tb_categoria (descricao)
VALUES	("PISSALANDREA");

INSERT INTO tb_pizza (nome, valor, quantidade, categoria_id)
VALUES	("CALABRESA", 50, 10, 4);

INSERT INTO tb_pizza (nome, valor, quantidade, categoria_id)
VALUES	("PORTUGUESA", 20, 10, 4);

INSERT INTO tb_pizza (nome, valor, quantidade, categoria_id)
VALUES	("FRANGO", 40, 10, 4);

INSERT INTO tb_pizza (nome, valor, quantidade, categoria_id)
VALUES	("NAPOLITANA", 50, 10, 1);

INSERT INTO tb_pizza (nome, valor, quantidade, categoria_id)
VALUES	("BRIGADEIRO", 100, 10, 3);

INSERT INTO tb_pizza (nome, valor, quantidade, categoria_id)
VALUES	("ROMEU E JULIETA", 70, 10, 3);

INSERT INTO tb_pizza (nome, valor, quantidade, categoria_id)
VALUES	("MUCARELA", 20, 10, 4);

INSERT INTO tb_pizza (nome, valor, quantidade, categoria_id)
VALUES	("CREME DE AVELA COM FRUTAS", 50, 10, 3);

SELECT * FROM tb_pizza WHERE valor > 45;

SELECT * FROM tb_pizza WHERE valor BETWEEN 29 AND 60;

SELECT * FROM tb_pizza WHERE nome LIKE "c%";

SELECT nome, descricao, valor, quantidade FROM tb_pizza INNER JOIN tb_categoria
ON tb_pizza.categoria_id = tb_categoria.id;

SELECT nome, descricao FROM tb_pizza INNER JOIN tb_categoria
ON tb_pizza.categoria_id = tb_categoria.id WHERE tb_categoria.id = 4;
