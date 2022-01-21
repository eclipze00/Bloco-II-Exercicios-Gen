CREATE DATABASE db_cursoDaMinhaVida;

USE db_cursoDaMinhaVida;

CREATE TABLE tb_catCurso (
	id_cateCurso INT NOT NULL AUTO_INCREMENT,
		tipoCurso VARCHAR (50),
        avaliacao VARCHAR (50),
        professor VARCHAR (50),
        PRIMARY KEY (id_cateCurso)
);
-- --------------------------------------------------------------------------------------------
CREATE TABLE tb_curso (
	id_curso INT NOT NULL AUTO_INCREMENT,
		nome VARCHAR (200),
        preco FLOAT,
        desconto FLOAT,
        classificacao VARCHAR (50),
        fk_catCurso INT,
        PRIMARY KEY (id_curso),
        FOREIGN KEY (fk_catCurso) REFERENCES tb_catCurso (id_cateCurso)
);
-- --------------------------------------------------------------------------------------------

INSERT INTO tb_catCurso (tipoCurso, avaliacao, professor)
VALUES 
("Empreendedorismo", "4,6", "André Bernardo"),
("Comunicação", "4,8", "Adriano Sugimoto"),
("Administração", "4,5", "Deodato Fonseca"),
("Design", "4,6","Leandro Rezende"),
("Música","4,4", "Edicase Negócios Editoriais Ltda");

-- --------------------------------------------------------------------------------------------

INSERT INTO tb_curso (nome, preco, desconto, classificacao, fk_catCurso)
VALUES
("Fast MBA - Empreendedorismo, Negócios e Startups na Prática.", 299.90 , 250.00 , "Mais Vendidos", 1),
("Comunicação e Oratória | O Guia COMPLETO + 3 Cursos Extras.", 219.90, 150.00 , "Classificação mais alta", 2),
("Aprenda facilmente a criar Dashboards incríveis no Excel.", 219.90, 130.00 , "Mais Vendidos", 3),
("UX & Design Thinking: Experiência do Usuário nos negócios.", 234.90 , 200.00 , "Classificação mais alta", 4),
("Curso Completo de Violão + 3 Revistas Digitais Grátis.", 59.90 , 29.90 , "Mais Vendidos", 5),
("Gestão de Projetos - Avançado.", 109.90 , 70.90 , "Padrão de venda normal", 1),
("Figma: Design colaborativo do básico ao protótipo responsivo.", 129.90 , 79.90 , "Mais Vendidos", 4),
("Curso Cavaquinho Fácil + Revista Digital Grátis.", 39.90 , 10.90 , "Classificação mais alta", 5);

-- --------------------------------------------------------------------------------------------

SELECT * FROM tb_curso
WHERE preco > 50.00;

-- --------------------------------------------------------------------------------------------

SELECT * FROM tb_curso
WHERE preco BETWEEN 3 AND 60;

--------------------------------------------------------------------------------------------

SELECT * FROM tb_curso
WHERE nome LIKE "%j%";

-- --------------------------------------------------------------------------------------------

SELECT * FROM tb_catCurso
INNER JOIN tb_curso ON fk_catCurso = tb_catCurso.id_cateCurso
WHERE tb_catCurso.id_cateCurso = 5

-- --------------------------------------------------------------------------------------------

