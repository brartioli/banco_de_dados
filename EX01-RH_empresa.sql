CREATE DATABASE db_RHempresa;
USE db_RHempresa;

CREATE TABLE tb_colaboradores(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255),
cargo VARCHAR(255),
salario DECIMAL NOT NULL,
data_admissao DATE
);

SELECT * FROM tb_colaboradores;

INSERT INTO tb_colaboradores (nome, cargo, salario, data_admissao)
VALUES("Maria Da Silva", "Analista de sistemas", 5000, "2023-02-16");
INSERT INTO tb_colaboradores (nome, cargo, salario, data_admissao)
VALUES("julia santos", "Estágiaria de Marketing", 1500, "2024-08-02");
INSERT INTO tb_colaboradores (nome, cargo, salario, data_admissao)
VALUES("Suzane Souza", "Desnvolvedora Junior", 2700, "2024-09-15");
INSERT INTO tb_colaboradores (nome, cargo, salario, data_admissao)
VALUES("Ana Maria", "Assistente Administrativo", 1500, "2024-08-30");
INSERT INTO tb_colaboradores (nome, cargo, salario, data_admissao)
VALUES("Luana Pereira", "Desenvolvedora Senior", 8500, "2021-03-15");

SELECT * FROM tb_colaboradores WHERE salario > 2000;

SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET salario = 1800 WHERE id = 4;





