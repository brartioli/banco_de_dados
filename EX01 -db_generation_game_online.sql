CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
descricao VARCHAR (255)
);

CREATE TABLE tb_personagens(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
personagem VARCHAR (255) NOT NULL,
ataque INT,
defesa INT,
classeid BIGINT,
 FOREIGN KEY (classeid) REFERENCES tb_classes(id)
);

SELECT * FROM tb_classes;
SELECT * FROM tb_personagens;

INSERT INTO tb_classes(nome, descricao)
VALUES ("lutador","destruir");
INSERT INTO tb_classes(nome, descricao)
VALUES ("mago","curar");
INSERT INTO tb_classes(nome, descricao)
VALUES ("assasino","atacar");
INSERT INTO tb_classes(nome, descricao)
VALUES ("atirador","lutar, reeber escudo");
INSERT INTO tb_classes(nome, descricao)
VALUES ("tanque","suporte");

INSERT INTO tb_personagens(personagem, ataque, defesa, classeid)
VALUES ("Atrox", 3000, 2400,1);
INSERT INTO tb_personagens(personagem, ataque, defesa, classeid)
VALUES("Ahri", 1900, 3000, 2);
INSERT INTO tb_personagens(personagem, ataque, defesa, classeid)
VALUES("Akali", 3000, 2060,3);
INSERT INTO tb_personagens(personagem, ataque, defesa, classeid)
VALUES("Akshan", 3500, 3500,4);
INSERT INTO tb_personagens(personagem, ataque, defesa, classeid)
VALUES("Alistar", 2500,4500,5);
INSERT INTO tb_personagens(personagem, ataque, defesa, classeid)
VALUES("Ambessa", 4500, 3500,1);
INSERT INTO tb_personagens(personagem, ataque, defesa, classeid)
VALUES("Ekko", 3600,2000,3);
INSERT INTO tb_personagens(personagem, ataque, defesa, classeid)
VALUES("Jinx", 4000,2000,4);

SELECT * FROM tb_personagens WHERE ataque > 2000;

SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classeid = tb_classes.id;

SELECT tb_personagens.personagem FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classeid = tb_classes.id WHERE tb_classes.nome = 'atirador';











