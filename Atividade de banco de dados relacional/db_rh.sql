 -- CRIANDO BANCO DE DADO
CREATE DATABASE db_rh;

-- SELECIONAR BANCO DE DADO
use db_rh;

-- CRIAR TABELA
CREATE TABLE tb_funcionarios(
id bigint AUTO_INCREMENT,
nome varchar(100) NOT NULL,
cpf varchar(11) NOT NULL,
data_nascimento date,
telefone varchar(11),
salario decimal (10,2),
PRIMARY KEY (id)
);

-- INSERIR DADOS NA TABELA
INSERT INTO tb_funcionarios (nome, cpf, data_nascimento, telefone, salario)
VALUES ("felipe", "12345678901", "2000-11-08", "11999999999", 25000.00);

INSERT INTO tb_funcionarios (nome, cpf, data_nascimento, telefone, salario)
VALUES ("otavio", "16745678901", "2001-12-12", "1112324343", 2000.00);

INSERT INTO tb_funcionarios (nome, cpf, data_nascimento, telefone, salario)
VALUES ("leonardo", "94345678901", "1997-08-12", "1115534343", 1000.00);

INSERT INTO tb_funcionarios (nome, cpf, data_nascimento, telefone, salario)
VALUES ("izabella", "54345678901", "2007-04-03", "1113354343", 30000.00);

INSERT INTO tb_funcionarios (nome, cpf, data_nascimento, telefone, salario)
VALUES ("leticia", "77745678901", "2005-08-12", "1117434343", 1900.00);

-- LISTAR DADOS DA TABELA
SELECT * FROM tb_funcionarios WHERE salario > 2000;

SELECT * FROM tb_funcionarios WHERE salario < 2000;

-- ATUALIZAR DADO
UPDATE tb_funcionarios SET salario = 8000.00  WHERE id =5;
