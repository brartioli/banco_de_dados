CREATE DATABASE db_escola;
USE db_escola;

CREATE TABLE tb_estudantes(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255),
idade INT,
nota DECIMAL(4,2),
materia VARCHAR(255)
);

SELECT * FROM tb_estudantes;

INSERT INTO tb_estudantes(nome,idade,nota,materia)
VALUES ("julia Silva", 15, 5.0, "Física");
INSERT INTO tb_estudantes(nome,idade,nota,materia)
VALUES("João Rodrigues", 14, 4.0, "Física");
INSERT INTO tb_estudantes(nome,idade,nota,materia)
VALUES("Fernanda Costa", 15, 10.0, "Português");
INSERT INTO tb_estudantes(nome,idade,nota,materia)
VALUES("Ana Maria", 14, 7.5, "Biologia");
INSERT INTO tb_estudantes(nome,idade,nota,materia)
VALUES("Isabela Souza", 13, 8.7, "Matemática");
INSERT INTO tb_estudantes(nome,idade,nota,materia)
VALUES("Larissa Manoela", 15, 6.5, "História");
INSERT INTO tb_estudantes(nome,idade,nota,materia)
VALUES("Paulo junior", 14, 9.5, "Geografia");
INSERT INTO tb_estudantes(nome,idade,nota,materia)
VALUES("Caros Santos", 15, 6.0, "Química");

SELECT * FROM tb_estudantes WHERE nota > 7.0;

SELECT * FROM tb_estudantes WHERE nota < 7.0;

UPDATE tb_estudantes SET nota = 7.50 WHERE id = 6;




