CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classe(
	id_classe INT NOT NULL AUTO_INCREMENT,
		clã VARCHAR (45) NOT NULL,
		raça VARCHAR (45) NOT NULL,
		função VARCHAR (45) NOT NULL,
		PRIMARY KEY (id_classe)
);
-- --------------------------------------------------------------------------------------------
CREATE TABLE tb_personagem(
	id_personagem INT NOT NULL AUTO_INCREMENT,
		nickname VARCHAR (45),
        nivel VARCHAR (45),
        cabelo VARCHAR (45),
        barba VARCHAR (45),
		ataque VARCHAR (45),
		defesa VARCHAR (45),
        fk_classe INT,
        PRIMARY KEY (id_personagem),
        FOREIGN KEY (fk_classe) REFERENCES tb_classe (id_classe)
);
-- --------------------------------------------------------------------------------------------
INSERT INTO tb_classe (clã, raça, função)
VALUES
("Allie","Anão","Paladino"),
("Horde","Orc","Guerreiro"),
("Allie","Humano","Druida"),
("Horde","Troll","Ladino"),
("Allie","Elfo","Caçador");
-- --------------------------------------------------------------------------------------------
INSERT INTO tb_personagem (nickname, nivel, cabelo, barba, ataque, defesa)
VALUES
("Eclipze", "50", "Longo", "Cheia", "2500","1700"),
("Haydu", "49", "Curto", "Trança", "2499", "1600"),
("Fogz", "60", "Careca", "Mustache", "3000", "2300"),
("RzN", "32", "Rustico", "Nenhum", "1900", "1200"),
("Pi", "80", "Solto", "Cheia", "7500","5500"),
("Solar", "21", "Careca", "Mustache", "1000", "900"),
("RetZ", "48", "Curto", "Nenhum", "2300", "2000"),
("Gabz", "10", "Rustico", "Nenhum", "550", "400");
-- --------------------------------------------------------------------------------------------
SELECT * FROM tb_personagem
WHERE ataque > 2000;
-- --------------------------------------------------------------------------------------------
SELECT * FROM tb_personagem
WHERE defesa BETWEEN 1000 AND 2000;
-- --------------------------------------------------------------------------------------------
SELECT * FROM tb_personagem
WHERE nickname LIKE "%c%";
-- --------------------------------------------------------------------------------------------
SELECT * FROM tb_classe
INNER JOIN tb_personagem ON tb_personagem.fk_classe = tb_classe.id_classe
WHERE tb_classe.id_classe = 3
-- --------------------------------------------------------------------------------------------



