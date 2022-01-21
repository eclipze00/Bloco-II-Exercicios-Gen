CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos01(
	id_produto INT AUTO_INCREMENT,
    produto VARCHAR(45),
    foto_produto VARCHAR(255) NULL,
    validade DATE,
    preco FLOAT,
    PRIMARY KEY (id_produto)
);

INSERT INTO tb_produtos01 (produto, foto_produto, validade, preco)
VALUES
("Arroz", "arroz.jpeg", '2022-10-05', 30.00), 
("Feijão", "feijao.jpeg", '2022-12-02', 6.90), 
("Refrigerante", "refrigerante.jpeg", '2022-02-05', 600.00), 
("Macarrão", "macarrao.jpeg", '2022-09-20', 14.00),
("Bolacha", "bolacha.jpeg", '2022-05-30', 30.00), 
("Suco", "suco.jpeg", '2022-12-03', 30.00), 
("Carne", "carne.jpeg", '2022-03-20', 500.00), 
("Molho", "molho.jpeg", '2022-01-20', 30.00); 

SELECT * FROM tb_produtos01
WHERE preco >= 500.00;

SELECT * FROM tb_produtos01
WHERE preco < 500.00;

UPDATE tb_produtos01
SET preco = 600
WHERE id_produto = 4;