CREATE DATABASE db_space_odyssey;

USE db_space_odyssey;

CREATE TABLE tb_ships (
    id INT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    tipo VARCHAR(50),
    capacidade_carga INT,
    velocidade INT
);

INSERT INTO tb_ships (id, nome, tipo, capacidade_carga, velocidade)
VALUES
    (1, 'Estelar 1', 'Cargueiro', 5000, 200),
    (2, 'Falcão Celeste', 'Caça', NULL, 400),
    (3, 'Nave Exploradora', 'Exploração', 1000, 300),
    (4, 'Colosso Galáctico', 'Cruzador', 8000, 150),
    (5, 'Espectro Negro', 'Cruzador', 6000, 180);

CREATE TABLE tb_crew (
    id INT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    idade INT,
    especialidade VARCHAR(50),
    id_nave INT,
    FOREIGN KEY (id_nave) REFERENCES tb_ships(id)
);

INSERT INTO tb_crew (id, nome, idade, especialidade, id_nave)
VALUES
    (1, 'Alex Parker', 30, 'Piloto', 2),
    (2, 'Lena Rodriguez', 28, 'Engenheira', 3),
    (3, 'Max Turner', 35, 'Navegador', 1),
    (4, 'Sophia Lee', 27, 'Médica', 4),
    (5, 'Lucas Chen', 32, 'Comandante', 5),
    (6, 'Eva White', 29, 'Piloto', 3),
    (7, 'Oliver Davis', 31, 'Técnico', 1),
    (8, 'Zara Adams', 26, 'Cientista', 2);

SELECT * FROM tb_crew WHERE idade < 30;

SELECT * FROM tb_crew WHERE especialidade = 'Piloto';

SELECT c.*, s.nome AS nave_nome
FROM tb_crew c
INNER JOIN tb_ships s ON c.id_nave = s.id;

SELECT c.*, s.nome AS nave_nome
FROM tb_crew c
INNER JOIN tb_ships s ON c.id_nave = s.id
WHERE s.tipo = 'Cargueiro';