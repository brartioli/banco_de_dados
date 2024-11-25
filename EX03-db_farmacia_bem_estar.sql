CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
categoria VARCHAR(255) NOT NULL,
descricao VARCHAR(255) NOT NULL
);

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
preco DECIMAL(10, 2) NOT NULL,
quantidade INT NOT NULL,
categoriaid BIGINT,
FOREIGN KEY (categoriaid) REFERENCES tb_categorias (id)
);

INSERT INTO tb_categorias (categoria, descricao)
VALUES("Medicamento", "produto farmacêutico, tecnicamente obtido ou elaborado, com finalidade profilática, curativa, paliativa ou para fins de diagnóstico");
INSERT INTO tb_categorias (categoria, descricao)
VALUES("Cosmético","substâncias ou misturas de uso externo que têm como objetivo limpar,perfumar, embelezar e etc");
INSERT INTO tb_categorias (categoria, descricao)
VALUES("Infantis","como mamadeiras, chupetas, bicos e protetores de mamilos");
INSERT INTO tb_categorias (categoria, descricao)
VALUES("Higiene","como desodorantes, absorventes, escovas de dentes, creme dental, enxaguante bucal, entre outros");
INSERT INTO tb_categorias (categoria, descricao)
VALUES("Suplementação","é um produto que complementa a alimentação, fornecendo nutrientes, enzimas, substâncias bioativas ou probióticos");

INSERT INTO tb_produtos (nome, preco, quantidade, categoriaid) 
VALUES ("Dipirona", 5.00, 200, 1);
INSERT INTO tb_produtos (nome, preco, quantidade, categoriaid) 
VALUES ("chupeta", 15.00, 50, 3);
INSERT INTO tb_produtos (nome, preco, quantidade, categoriaid) 
VALUES ("Creme CeraVe", 75.00, 100, 2);
INSERT INTO tb_produtos (nome, preco, quantidade, categoriaid) 
VALUES ('Aspirina', 30.00, 100, 1);
INSERT INTO tb_produtos (nome, preco, quantidade, categoriaid) 
VALUES ("Carmed", 25.00, 100, 2);
INSERT INTO tb_produtos (nome, preco, quantidade, categoriaid) 
VALUES ("Colgate", 20.00, 300, 4);
INSERT INTO tb_produtos (nome, preco, quantidade, categoriaid) 
VALUES ("gummy hair", 120.00, 50, 5);
INSERT INTO tb_produtos (nome, preco, quantidade, categoriaid) 
VALUES ("Desvenlafaxia", 109.00, 40, 1);

SELECT * FROM tb_categorias;
SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoriaid = tb_categorias.id;

SELECT tb_produtos.nome, tb_produtos.preco, tb_produtos.quantidade, tb_categorias.categoria FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoriaid = tb_categorias.id WHERE tb_categorias.categoria = "Cosmético";