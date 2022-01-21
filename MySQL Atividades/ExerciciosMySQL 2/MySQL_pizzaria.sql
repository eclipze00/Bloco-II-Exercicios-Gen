CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categoria(
	id_categoria INT NOT NULL AUTO_INCREMENT,
		tipoPizza VARCHAR(45),
        preco FLOAT,
        qntPizza INT,
        PRIMARY KEY (id_categoria)
);
-- --------------------------------------------------------------------------------------------
CREATE TABLE tb_pizza(
	id_pizza INT NOT NULL AUTO_INCREMENT,
		sabor VARCHAR(45),
        borda VARCHAR(45),
        adicionar VARCHAR(45),
        tipoDeMassa VARCHAR(45),
        fk_categoria INT,
        PRIMARY KEY (id_pizza),
        FOREIGN KEY (fk_categoria) REFERENCES tb_categoria (id_categoria)
);
-- --------------------------------------------------------------------------------------------
INSERT INTO tb_categoria (tipoPizza, preco, qntPizza)
VALUES
("Salgada", 45.00, 1),
("Doce", 30.00, 1),
("Meio-a-Meio", 50.00, 1),
("Salgada", 90.00, 2),
("Meio-a-Meio", 100.00, 2);

-- --------------------------------------------------------------------------------------------

INSERT INTO tb_pizza (sabor, borda, adicionar, tipoDeMassa, fk_categoria)
VALUES
("Frango com Catupiry", "Com recheio", "Não adicionar nada", "Normal", 1),
("Pepperoni", "Com recheio", "Queijo Extra", "Normal", 1),
("Brigadeiro", "Sem recheio", "Não adicionar nada", "Fina", 2),
("Banana com Nutella", "Com recheio de chocolate", "Não adicionar nada", "Normal", 2),
("Meio Mussarela Meio Calabresa", "Com recheio de Cheddar", "Queijo Extra", "Normal", 3),
("Meio Bacon Meio Frango", "Sem recheio", "Não adicionar nada", "Fina", 3),
("4 Queijos", "Com recheio de Chedar", "Molho Extra", "Normal", 1),
("Prestígio", "Sem recheio", "Não adicionar nada", "Normal", 2);

-- --------------------------------------------------------------------------------------------

SELECT * FROM tb_categoria
WHERE preco > 45.00;

-- --------------------------------------------------------------------------------------------

SELECT * FROM tb_categoria
WHERE preco BETWEEN 29 AND 60;

-- --------------------------------------------------------------------------------------------

SELECT * FROM tb_pizza
WHERE sabor LIKE "%c%";

-- --------------------------------------------------------------------------------------------

SELECT * FROM tb_categoria
INNER JOIN tb_pizza ON tb_pizza.fk_categoria = tb_categoria.id_categoria
WHERE tb_categoria.id_categoria = 2

-- --------------------------------------------------------------------------------------------
