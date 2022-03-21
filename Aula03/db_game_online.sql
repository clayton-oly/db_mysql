
CREATE DATABASE db_game_online;

use db_game_online;

CREATE TABLE tb_classe (
id bigint AUTO_INCREMENT,
nome varchar(255),
taxa int,
bonus int,
PRIMARY KEY (id)
);

CREATE TABLE tb_personagem (
id bigint AUTO_INCREMENT,
nome varchar(255),
nivel int,
ataque int,
defesa int,
id_classe bigint,
PRIMARY KEY (id),
FOREIGN KEY (id_classe) REFERENCES tb_classe (id)
);

INSERT INTO tb_personagem (nome, nivel, ataque, defesa, id_classe)
VALUES	("draven", 50, 1000, 500, 1);

INSERT INTO tb_personagem (nome, nivel, ataque, defesa, id_classe)
VALUES	("talon", 60, 2000, 500, 2);

INSERT INTO tb_personagem (nome, nivel, ataque, defesa, id_classe)
VALUES	("leona", 30, 500, 3000, 3);

INSERT INTO tb_personagem (nome, nivel, ataque, defesa, id_classe)
VALUES	("viego", 20, 4000, 1000, 5);

INSERT INTO tb_personagem (nome, nivel, ataque, defesa, id_classe)
VALUES	("viktor", 40, 500, 3000, 4);

INSERT INTO tb_personagem (nome, nivel, ataque, defesa, id_classe)
VALUES	("lucian", 20, 2500, 200, 1);

INSERT INTO tb_personagem (nome, nivel, ataque, defesa, id_classe)
VALUES	("orn", 30, 1500, 9000, 3);

INSERT INTO tb_personagem (nome, nivel, ataque, defesa, id_classe)
VALUES	("cayt", 30, 4500, 300, 1);

INSERT INTO tb_classe (nome, taxa, bonus)
VALUES ("ATIRADOR", 50, 600);

INSERT INTO tb_classe (nome, taxa, bonus)
VALUES ("ASSASINO", 60, 700);

INSERT INTO tb_classe (nome, taxa, bonus)
VALUES ("LUTADOR", 20, 200);

INSERT INTO tb_classe (nome, taxa, bonus)
VALUES ("MAGO", 80, 1000);

INSERT INTO tb_classe (nome, taxa, bonus)
VALUES ("JUNGLER", 60, 200);

SELECT * FROM tb_personagem WHERE  ataque > 2000;

SELECT * FROM tb_personagem WHERE  defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagem  WHERE nome LIKE "c%";

SELECT tb_personagem.nome, nivel, ataque, defesa, tb_classe.nome, taxa, bonus FROM tb_personagem INNER JOIN tb_classe
ON tb_personagem.id_classe = tb_classe.id;

SELECT tb_personagem.nome, tb_classe.nome FROM tb_personagem INNER JOIN tb_classe
ON tb_personagem.id_classe = tb_classe.id WHERE tb_classe.id = 1;