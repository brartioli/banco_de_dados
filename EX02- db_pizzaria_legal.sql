CREATE DATABASE  db_pizzaria_legal;
USE  db_pizzaria_legal;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    sabor_categoria VARCHAR(255) NOT NULL,
    descricao VARCHAR(255) NOT NULL
);

CREATE TABLE tb_pizzas(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
sabor VARCHAR(255) NOT NULL,
preco DECIMAL (10, 2) NOT NULL,
tamanho  VARCHAR(255) NOT NULL,
categoriaid BIGINT,
FOREIGN KEY (categoriaid) REFERENCES tb_categorias (id)
);

INSERT INTO tb_categorias (sabor_categoria, descricao)
VALUES ("doce", "Pizza doce com borda recheada com chocolate");
INSERT INTO tb_categorias (sabor_categoria, descricao)
VALUES ("Salgada", "Pizza Salgada com borda recheada com catupiry");
INSERT INTO tb_categorias (sabor_categoria, descricao)
VALUES ("Especial", "Pizza salgada especial da pizzaria legal");
INSERT INTO tb_categorias (sabor_categoria, descricao)
VALUES ("Vegetariana", "Pizza Vegetariana somente sem carne");
INSERT INTO tb_categorias (sabor_categoria, descricao)
VALUES ("Vegana", "pizza vegana feita sem nada de origem animal");

INSERT INTO tb_pizzas (sabor, preco, tamanho,categoriaid)
VALUES ("Calabresa", 46.00, "8 predaços", 2);
INSERT INTO tb_pizzas (sabor, preco, tamanho,categoriaid)
VALUES ("Mussarela", 46.00, "6 predaços", 2);
INSERT INTO tb_pizzas (sabor, preco, tamanho,categoriaid)
VALUES ("Brasileira", 51.00, "8 predaços",2);
INSERT INTO tb_pizzas (sabor, preco, tamanho,categoriaid)
VALUES ("Brigadeiro", 42.00, "4 predaços", 1);
INSERT INTO tb_pizzas (sabor, preco, tamanho,categoriaid)
VALUES ("Brocolis I", 49.00, "8 predaços", 4);
INSERT INTO tb_pizzas (sabor, preco, tamanho,categoriaid)
VALUES ("Vegana I", 46.00, "8 predaços", 5);
INSERT INTO tb_pizzas (sabor, preco, tamanho,categoriaid)
VALUES ("Prestígio", 58.00, "8 predaços", 1);
INSERT INTO tb_pizzas (sabor, preco, tamanho,categoriaid)
VALUES ("Escarola", 47.00, "8 predaços", 3);

-- visualizar tabelas
SELECT * FROM tb_categorias;
SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE sabor LIKE "%M%";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoriaid = tb_categorias.id;

SELECT tb_pizzas.sabor, tb_pizzas.preco, tb_pizzas.tamanho, tb_categorias.sabor_categoria FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoriaid = tb_categorias.id WHERE tb_categorias.sabor_categoria = 'doce';





