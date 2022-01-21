CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_alunos(
	id_aluno INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(45),
    idade INT NOT NULL,
    turma VARCHAR(45),
    nota VARCHAR(45),
    PRIMARY KEY (id_aluno)
);

INSERT INTO tb_alunos(nome, idade, turma, nota)
VALUES
("João", 14, "5-A", "7"),
("Lucas", 16, "7-C", "8"),
("Caio", 14, "5-A", "9"),
("Erick", 17, "8-B", "10"),
("Gabriel", 14, "5-B", "6"),
("Patricia", 16, "7-A", "5"),
("Amanda", 17, "8-A", "3"),
("Jose", 14, "5-B", "8");

SELECT * FROM tb_alunos
WHERE nota > 7;

SELECT * FROM tb_alunos
WHERE nota < 7;

DELETE FROM tb_alunos
WHERE id_aluno = 7;
