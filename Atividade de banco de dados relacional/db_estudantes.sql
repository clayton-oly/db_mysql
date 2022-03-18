 -- CRIANDO BANCO DE DADO
CREATE DATABASE db_estudantes;

-- SELECIONAR BANCO DE DADO
use db_estudantes;

-- CRIAR TABELA
CREATE TABLE tb_estudantes(
id bigint AUTO_INCREMENT,
nome varchar(100) NOT NULL,
ra varchar(100) NOT NULL,
telefone varchar(11) NOT NULL,
nota decimal (3,1) NOT NULL,
descricao varchar(255),
PRIMARY KEY (id)
);

-- INSERIR DADOS NA TABELA
INSERT INTO tb_estudantes (nome, ra, telefone, nota, descricao)
VALUES ("otavio", "323434", "823273232", 5.0, "");

INSERT INTO tb_estudantes (nome, ra, telefone, nota, descricao)
VALUES ("maria", "7674545", "434656546", 4.0, "bom");

INSERT INTO tb_estudantes (nome, ra, telefone, nota, descricao)
VALUES ("joao", "43456", "968784775", 8.0, "bom aluno");

INSERT INTO tb_estudantes (nome, ra, telefone, nota, descricao)
VALUES ("bianca", "94775534", "9688734734", 10, "");

INSERT INTO tb_estudantes (nome, ra, telefone, nota, descricao)
VALUES ("marcelo", "349875875", "59588676", 5.5, "");

INSERT INTO tb_estudantes (nome, ra, telefone, nota, descricao)
VALUES ("ana", "45678667", "554545", 10.0, "");

INSERT INTO tb_estudantes (nome, ra, telefone, nota, descricao)
VALUES ("guilherme", "656564", "5576766", 6.0, "bom");

INSERT INTO tb_estudantes (nome, ra, telefone, nota, descricao)
VALUES ("rafaela", "4335456", "5476768", 8.0, "bom");

-- LISTAR DADOS DA TABELA
SELECT * FROM tb_estudantes WHERE nota > 7;

SELECT * FROM tb_estudantes WHERE nota < 7;

-- ATUALIZAR DADO
UPDATE tb_estudantes SET nota = 10 WHERE id = 5;

 

