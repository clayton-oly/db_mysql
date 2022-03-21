CREATE DATABASE db_cidade_das_frutas;

use db_cidade_das_frutas;

CREATE TABLE tb_categoria(
id bigint AUTO_INCREMENT,
descricao varchar(255),
PRIMARY KEY (id)
);

CREATE TABLE tb_produto(
id bigint AUTO_INCREMENT,
nome varchar(255),
valor decimal (8,2),
quantidade int,
categoria_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
);

INSERT INTO tb_categoria (descricao)
VALUES	("FRUTAS");

INSERT INTO tb_categoria (descricao)
VALUES	("VERDURES");

INSERT INTO tb_categoria (descricao)
VALUES	("LEGUMES");

INSERT INTO tb_categoria (descricao)
VALUES	("TEMPEROS");

INSERT INTO tb_categoria (descricao)
VALUES	("OVOS");

INSERT INTO tb_produto (nome, valor, quantidade, categoria_id)
VALUES	("MACA", 50, 10, 1);

INSERT INTO tb_produto (nome, valor, quantidade, categoria_id)
VALUES	("BANANA", 20, 10, 1);

INSERT INTO tb_produto (nome, valor, quantidade, categoria_id)
VALUES	("BATATA DOCE", 40, 10, 3);

INSERT INTO tb_produto (nome, valor, quantidade, categoria_id)
VALUES	("ALFACE", 50, 10, 2);

INSERT INTO tb_produto (nome, valor, quantidade, categoria_id)
VALUES	("CEBOLA", 100, 10, 3);

INSERT INTO tb_produto (nome, valor, quantidade, categoria_id)
VALUES	("OVO BRANCO", 70, 10, 5);

INSERT INTO tb_produto (nome, valor, quantidade, categoria_id)
VALUES	("AGRIAO", 20, 10, 2);

INSERT INTO tb_produto (nome, valor, quantidade, categoria_id)
VALUES	("CENOURA", 50, 10, 3);

SELECT * FROM tb_produto WHERE valor > 50;

SELECT * FROM tb_produto WHERE valor BETWEEN 3 AND 60;

SELECT * FROM tb_produto WHERE nome LIKE "c%";

SELECT nome, descricao, valor, quantidade FROM tb_produto INNER JOIN tb_categoria
ON tb_produto.categoria_id = tb_categoria.id;

SELECT nome, descricao FROM tb_produto INNER JOIN tb_categoria
ON tb_produto.categoria_id = tb_categoria.id WHERE tb_categoria.id = 5;
