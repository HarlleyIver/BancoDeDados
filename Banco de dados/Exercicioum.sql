CREATE DATABASE db_rh;
USE db_rh;

CREATE TABLE colaboradores(
	id bigint primary key auto_increment,
    nome VARCHAR(255),
    cargo VARCHAR(255),
    salario FLOAT,
    idade INT
);

INSERT INTO colaboradores(nome,cargo,salario,idade) VALUES ('Felipe Costa', 'Desenvolvedor jr', 3000.00, 23);
INSERT INTO colaboradores(nome,cargo,salario,idade) VALUES ('Leticia Pacheco', 'Técnico de Suporte', 1800.00, 20);
INSERT INTO colaboradores(nome,cargo,salario,idade) VALUES ('Richard Lima', 'Desenvolvedor Pleno', 7000.00, 24);
INSERT INTO colaboradores(nome,cargo,salario,idade) VALUES ('Vanessa Lopes', 'Analista de Sistemas', 1900.00, 26);

SELECT * FROM Colaboradores WHERE salario > 2000;
SELECT * FROM Colaboradores WHERE salario < 2000;

UPDATE Colaboradores SET salario = 1950.00 WHERE id = 2;