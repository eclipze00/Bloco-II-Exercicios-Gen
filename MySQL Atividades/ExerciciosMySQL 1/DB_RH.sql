CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_funcionarios(
	id_usuario INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(45),
    email VARCHAR(45),
    data_aniver DATE,
    salario FLOAT,
    PRIMARY KEY (id_usuario)
);

INSERT INTO tb_funcionarios (nome, email, data_aniver, salario)
VALUES 
("João Paulo", "joao@email.com", '1995-03-29', 2300.00),
("Erick Alves", "erick@email.com", '1996-09-10', 1900.00),
("Lucas Silva", "lucas@email.com", '1990-06-05', 3000.00),
("Gabriel Rocha", "gabriel@email.com", '1999-01-15', 1500.00),
("Caio Souza", "caio@email.com", '1998-04-17', 2900.00);

SELECT * FROM tb_funcionarios
WHERE salario > 2000.00;

SELECT * FROM tb_funcionarios
WHERE salario < 2000.00;

UPDATE tb_funcionarios
SET salario = 1900.00
WHERE id_usuario = 2;
