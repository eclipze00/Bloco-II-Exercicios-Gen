CREATE DATABASE db_farmacia_do_bem;

USE db_farmacia_do_bem;

CREATE TABLE tb_catFarm(
	id_farm INT NOT NULL AUTO_INCREMENT,
		tipoProduto VARCHAR(45),
        desconto VARCHAR (45),
        qntProduto INT,
        PRIMARY KEY (id_farm)
);
-- --------------------------------------------------------------------------------------------
CREATE TABLE tb_prodFarm(
	id_remedio INT NOT NULL AUTO_INCREMENT,
		nome VARCHAR (200),
        validade DATE,
        serve VARCHAR (200),
        preco FLOAT,
        promocao VARCHAR (200), 
        fk_farm INT,
        PRIMARY KEY (id_remedio),
        FOREIGN KEY (fk_farm) REFERENCES tb_catFarm (id_farm)
);
-- --------------------------------------------------------------------------------------------

INSERT INTO tb_catFarm (tipoProduto, desconto, qntProduto)
VALUES
("Analgésicos", "25% OFF", 2),
("Dores e Febre", "Sem desconto disponível", 1),
("Gripe e Resfriado", "50% OFF", 2),
("Teste de Covid", "Sem desconto disponível", 1),
("Beleza e Higiene", "Sem desconto disponível", 1);

-- --------------------------------------------------------------------------------------------

INSERT INTO tb_prodFarm (nome, validade, serve, preco, promocao, fk_farm)
VALUES
("Dorflex", '2023-12-20', "Relaxa a Tensão Muscular", 18.90, "Leve 2 por R$14,79", 1),
("Dipirona", '2023-12-12', "Ajuda com analgésico e antitérmico", 7.16, "Sem promoções", 2),
("Benegrip", '2024-02-20', "Alivia os sintomas de gripes e resfriados tais como: dores de cabeça, febre e processos alérgicos, como nariz entupido. ", 16.80, "Apenas conveniado", 3),
("Teste Rapido para COVID", '2023-03-01', "Teste de COVID via saliva", 129.90, "Sem promoções", 4),
("Cotonetes", '2022-12-30', "Conforto e absorção para o cuidado da sua pele; cotonetes é indicado para a higiene pessoal de toda a família; pode ser usado para limpar delicadamente a parte externa da orelha", 3.90, "Apenas conveniado", 5),
("Escova Dental Curaprox Ultra Soft Trio Especial Edition", '2022-12-30', "Escova de dentes", 70.80, "Apenas conveniado", 5),
("Novalgina", '2023-05-15', "É indicado para o tratamento da febre e de dores, inclusive as intensas.", 23.30, "Sem promoções", 1),
("Descongestionante Nasal Nasoar", '2024-10-04', "Nasoar é indicado para uma efetiva lavagem nasal.", 69.50, "Sem promoções", 3);

-- --------------------------------------------------------------------------------------------

SELECT * FROM tb_prodFarm
WHERE preco > 50.00;

-- --------------------------------------------------------------------------------------------

SELECT * FROM tb_prodFarm
WHERE preco BETWEEN 3 AND 60;

-- --------------------------------------------------------------------------------------------

SELECT * FROM tb_prodFarm
WHERE nome LIKE "%b%";

--------------------------------------------------------------------------------------------

SELECT * FROM tb_catFarm
INNER JOIN tb_prodFarm ON tb_prodFarm.fk_farm = tb_catFarm.id_farm
WHERE tb_catFarm.id_farm = 5

-- --------------------------------------------------------------------------------------------
