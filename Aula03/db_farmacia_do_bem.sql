CREATE DATABASE db_farmacia_do_bem;

use db_farmacia_do_bem;

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
VALUES	("GRIPE");

INSERT INTO tb_categoria (descricao)
VALUES	("FEBRE");

INSERT INTO tb_categoria (descricao)
VALUES	("CORACAO");

INSERT INTO tb_categoria (descricao)
VALUES	("DIABETE");

INSERT INTO tb_categoria (descricao)
VALUES	("ANTIDEPRESSIVOS");

INSERT INTO tb_produto (nome, valor, quantidade, categoria_id)
VALUES	("NORTRIPTILINA", 50, 10, 5);

INSERT INTO tb_produto (nome, valor, quantidade, categoria_id)
VALUES	("MELATONINA", 20, 10, 5);

INSERT INTO tb_produto (nome, valor, quantidade, categoria_id)
VALUES	("CIMEGRIPE", 40, 10, 1);

INSERT INTO tb_produto (nome, valor, quantidade, categoria_id)
VALUES	("DIPIRONA", 50, 10, 2);

INSERT INTO tb_produto (nome, valor, quantidade, categoria_id)
VALUES	("PARACETAMOL", 100, 10, 2);

INSERT INTO tb_produto (nome, valor, quantidade, categoria_id)
VALUES	("DORFLEX", 70, 10, 2);

INSERT INTO tb_produto (nome, valor, quantidade, categoria_id)
VALUES	("Meglitinidas", 20, 10, 4);

INSERT INTO tb_produto (nome, valor, quantidade, categoria_id)
VALUES	("Biguanidas", 50, 10, 4);

SELECT * FROM tb_produto WHERE valor > 50;

SELECT * FROM tb_produto WHERE valor BETWEEN 3 AND 60;

SELECT * FROM tb_produto WHERE nome LIKE "b%";

SELECT nome, descricao, valor, quantidade FROM tb_produto INNER JOIN tb_categoria
ON tb_produto.categoria_id = tb_categoria.id;

SELECT nome, descricao FROM tb_produto INNER JOIN tb_categoria
ON tb_produto.categoria_id = tb_categoria.id WHERE tb_categoria.id = 5;
