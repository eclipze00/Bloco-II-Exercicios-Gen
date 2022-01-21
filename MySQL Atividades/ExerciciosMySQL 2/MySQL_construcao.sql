CREATE DATABASE db_construindo_a_nossa_vida;

USE db_construindo_a_nossa_vida;

CREATE TABLE tb_catConstr (
	id_categoriaConstr INT NOT NULL AUTO_INCREMENT,
		tipoMaterial VARCHAR (50),
		desconto VARCHAR (50),
        qntMaterial INT,
        PRIMARY KEY (id_categoriaConstr)
);
-- --------------------------------------------------------------------------------------------
CREATE TABLE tb_prodMaterial (
	id_prodMate INT NOT NULL AUTO_INCREMENT,
		nome VARCHAR (50),
        preco FLOAT,
        marca VARCHAR (50),
        avaliacao VARCHAR (50),
        fk_categoriaConstr INT,
		PRIMARY KEY (id_prodMate),
        FOREIGN KEY (fk_categoriaConstr) REFERENCES tb_catConstr (id_categoriaConstr)
);
-- --------------------------------------------------------------------------------------------

INSERT INTO tb_catConstr (tipoMaterial, desconto, qntMaterial)
VALUES 
("Blocos e Tijolos", "10% de Desconto a Vista", 1),
("Calhas e Rufos", "5% de Desconto a Vista", 2),
("Ferramentas", "Sem desconto", 1),
("Telhas", "15% de Desconto a Vista", 1),
("Aços para Construção", "10% de Desconto a Vista", 2);

-- --------------------------------------------------------------------------------------------

INSERT INTO tb_prodMaterial (nome, preco, marca, avaliacao, fk_categoriaConstr)
VALUES
("Bloco Cerâmico", 1.19, "Nova Conquista", "4 Estrelas", 1),
("Rufo Externo Galvanizado", 52.90, "CalhaForte", "1 Estrela", 2),
("Desempenadeira de Aço Lisa", 48.90, "Atlas", "2 Estrelas", 3),
("Telha Ondulada de Fibrocimento", 53.90, "Confibra ", "5 Estrelas", 4),
("Arame Farpado Rodeio Motto Mundial", 319.90, "Arcelormittal", "3 Estrelas", 5),
("Nivelador de Linhas 15M c/ Linha Lateral", 899.90, "Bosch", "5 Estrelas", 3),
("Telha Ondulada de Fibrocimento 370x60cm 8mm Onda", 279.90, "Brasilit", "3 Estrelas",  4),
("Cobogó Piazza esmaltado vermelho Cerâmica", 84.90, "Martins", "1 Estrela", 1);

-- --------------------------------------------------------------------------------------------

SELECT * FROM tb_prodMaterial
WHERE preco > 50.00;

-- --------------------------------------------------------------------------------------------

SELECT * FROM tb_prodMaterial
WHERE preco BETWEEN 3 AND 60;

--------------------------------------------------------------------------------------------

SELECT * FROM tb_prodMaterial
WHERE nome LIKE "%c%";

-- --------------------------------------------------------------------------------------------

SELECT * FROM tb_catConstr
INNER JOIN tb_prodMaterial ON fk_categoriaConstr = tb_catConstr.id_categoriaConstr
WHERE tb_catConstr.id_categoriaConstr = 3

-- --------------------------------------------------------------------------------------------
