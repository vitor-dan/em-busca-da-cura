DROP DATABASE IF EXISTS proj_sis_int;

CREATE DATABASE proj_sis_int;

USE proj_sis_int;

CREATE TABLE usuario (
    usuario_id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(32),
    email VARCHAR(64),
    senha VARCHAR(64),
    data_registro TIMESTAMP
);

INSERT INTO usuario (nome, email, senha) VALUES ("dev", "dev@ebc.com", "$2y$10$Ck4Yi2IG4SDbaDKdVac5weVDbj8Ia7TVp7IZLqryPyAMPFDWLClsy");

CREATE TABLE classificacao (
    classificacao_id INT PRIMARY KEY AUTO_INCREMENT,
    usuario_id INT,
    pontos INT
);

INSERT INTO classificacao (usuario_id,pontos) VALUES (1,930),(1,602);

SELECT 
    usuario.usuario_id,
    usuario.nome as nome,
    MAX(classificacao.pontos) AS pontos
FROM
    classificacao AS classificacao
        INNER JOIN
    usuario AS usuario
WHERE
    usuario.usuario_id = classificacao.usuario_id
GROUP BY usuario_id
ORDER BY classificacao.pontos DESC;