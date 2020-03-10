CREATE DATABASE IF NOT EXISTS SpotifyClone;

USE SpotifyClone;

CREATE TABLE planos (
plano_id INT PRIMARY KEY AUTO_INCREMENT,
plano VARCHAR(100) NOT NULL,
valor_plano DOUBLE(3,2) NOT NULL
) engine = InnoDB;

CREATE TABLE usuarios (
usuario_id INT PRIMARY KEY AUTO_INCREMENT,
usuario VARCHAR(50) NOT NULL,
idade INT NOT NULL,
plano_id INT,
FOREIGN KEY (plano_id) REFERENCES planos(plano_id)
) engine = InnoDB;

CREATE TABLE artistas (
artista_id INT PRIMARY KEY AUTO_INCREMENT,
nome_artista VARCHAR(100) NOT NULL
) engine = InnoDB;

CREATE TABLE seguindo_artista (
usuario_id INT,
artista_id int,
FOREIGN KEY (usuario_id) REFERENCES usuarios (usuario_id),
FOREIGN KEY (artista_id) REFERENCES artistas (artista_id)
) engine = InnoDB;
