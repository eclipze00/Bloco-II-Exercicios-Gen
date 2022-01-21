CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_catCarn (
	id_categoriaCar INT NOT NULL AUTO_INCREMENT,
		tipoCarn VARCHAR (50),
        desconto VARCHAR (50),
        qntCarn INT,
        PRIMARY KEY (id_categoriaCar)
);
-- --------------------------------------------------------------------------------------------
CREATE TABLE tb_prodCarn (
	id_carne INT NOT NULL AUTO_INCREMENT,
		nomeC VARCHAR (50),
        preco FLOAT,
        formato VARCHAR (50),
        corte VARCHAR (50),
        acompanhamento VARCHAR (50),
        fk_categoriaCar INT,
        PRIMARY KEY (id_carne),
        FOREIGN KEY (fk_categoriaCar) REFERENCES tb_catCarn (id_categoriaCar)
);
-- --------------------------------------------------------------------------------------------

INSERT INTO tb_catCarn (tipoCarn, desconto, qntCarn)
VALUES
("Bovinos", "5% de CashBack no PicPay", 1),
("Suínos", "7% de CashBack no PicPay", 2),
("Aves", "3% de CashBack no PicPay", 1),
("Pescados", "5% de CashBack no PicPay", 2),
("Cortes Especiais", "2% de CashBack no PicPay", 1);

-- --------------------------------------------------------------------------------------------

INSERT INTO tb_prodCarn (nomeC, preco, formato, corte, acompanhamento, fk_categoriaCar)
VALUES
("Bife de Alcatra", 42.96, "Bifes", "Alcatra", "Sal Grosso 1KG", 1),
("Costelinha Suína", 48.94, "Costela", "Suínos", "Molho de Alho Cremoso", 2),
("Sobrecoxa de Frango", 13.96, "Peças", "Coxa e SobreCoxa", "Sem acompanhamento", 3),
("Casquinha de Camarão", 29.96, "Iscas", "Camarão", "Sem acompanhamento", 4),
("Medalhão de Picante", 334.97, "Medalhões", "Picanha", "Cerveja Barril Heineken 5L", 5),
("Bife de Filé Mignon", 89.96, "Bifes", "Mignon", "Sem acompanhamento", 1),
("Coração de Frango", 29.96, "Peças", "Coração", "Sal Pimenta Preta", 3),
("Hambúrger Gran", 18.96, "Gran Reserva", "Hambúrger", "Sem acompanhamento", 5);

-- --------------------------------------------------------------------------------------------

SELECT * FROM tb_prodCarn
WHERE preco > 50.00;

-- --------------------------------------------------------------------------------------------

SELECT * FROM tb_prodCarn
WHERE preco BETWEEN 3 AND 60;

--------------------------------------------------------------------------------------------

SELECT * FROM tb_prodCarn
WHERE nomeC LIKE "%c%";

-- --------------------------------------------------------------------------------------------

SELECT * FROM tb_catCarn
INNER JOIN tb_prodCarn ON fk_categoriaCar = tb_catCarn.id_categoriaCar
WHERE tb_catCarn.id_categoriaCar = 5
