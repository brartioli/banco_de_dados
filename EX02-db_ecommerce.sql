CREATE DATABASE db_ecommerce;
USE db_ecommerce;

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255),
categoria VARCHAR(255),
preco DECIMAL (10,2),
descricao TEXT
);

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos (nome,categoria,preco,descricao)
VALUES("Sansung Galaxy s24", "Smartphone", 5400.00, 'Smartphone Samsung Galaxy S24+, Galaxy AI, Selfie de 12MP, Tela de 6.7" 1-120Hz, 256GB, 12GB RAM - Preto');
INSERT INTO tb_produtos (nome,categoria,preco,descricao)
VALUES ("Smart TV LG", "TV Smart", 2280.00, 'Smart TV 4K 50" LG UHD 50UT8050 Processador α5 Ger7 AI Alexa/Chromecast integrado Otimizador de Jogos webOS 24 Controle Smart Magic');
INSERT INTO tb_produtos (nome,categoria,preco,descricao)
VALUE ("JBL Fone", "Fone de ouvido", 380.00, 'JBL, Fone de Ouvido Sem Fio, Bluetooth, Tune Flex TWS - Preto');
INSERT INTO tb_produtos (nome,categoria,preco,descricao)
VALUE ("Mouse", "Mouse gamer", 108.00, 'Mouse Gamer Sem Fio Logitech G703 LIGHTSPEED com RGB LIGHTSYNC, 6 Botões Programáveis, Sensor HERO 25K e Bateria Recarregável - Compatível com POWERPLAY');
INSERT INTO tb_produtos (nome,categoria,preco,descricao)
VALUES ("NoteBook Acer","Notebok", 2800.00, 'Notebook Acer Aspire5 A515-45-R36L AMD Ryzen7 5700U 12GB RAM (AMD Radeon) 512GB SSD 15.6” LED IPS Full HD Prata Teclado numérico Independente Linux Gutta');
INSERT INTO tb_produtos(nome,categoria,preco,descricao)
VALUES("Teclado Dell", "acessórios",120.00, 'Dell - KM3322W, Teclado e Mouse sem fio, Preto');
INSERT INTO tb_produtos(nome,categoria,preco,descricao)
VALUES("Mesa Digitalizadora", "acessórios",200.00, 'Wacom One CTL472 - Mesa Digitalizadora, Preto / Vermelho');
INSERT INTO tb_produtos(nome,categoria,preco,descricao)
VALUES("Cabo USB apple", "Cabos e acessórios",100.00, 'Cabo Apple USB-C para Lightning (1 m)');

SELECT * FROM tb_produtos WHERE preco > 500;

SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET preco = 530 WHERE id = 4;







