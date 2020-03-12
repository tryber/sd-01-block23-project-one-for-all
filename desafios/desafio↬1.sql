CREATE DATABASE IF NOT EXISTS SpotifyClone;
USE SpotifyClone ;
CREATE TABLE IF NOT EXISTS artistas (
  artista_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL
);
CREATE TABLE IF NOT EXISTS albuns (
  album_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  artista_id INT NOT NULL,
  FOREIGN KEY (artista_id) REFERENCES artistas (artista_id)
);
CREATE TABLE IF NOT EXISTS musicas (
  musica_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  album_id INT NOT NULL,
  FOREIGN KEY (album_id) REFERENCES albuns (album_id)
);
CREATE TABLE IF NOT EXISTS planos (
  plano_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  tipo VARCHAR(30) NOT NULL,
  valor DOUBLE NOT NULL
);
CREATE TABLE IF NOT EXISTS usuarios (
  usuario_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  idade INT NOT NULL,
  plano_id INT NOT NULL,
  FOREIGN KEY (plano_id) REFERENCES planos (plano_id)
);
CREATE TABLE IF NOT EXISTS usuario_seguindo_artista (
  artista_id INT NOT NULL,
  usuario_id INT NOT NULL,
  PRIMARY KEY (artista_id, usuario_id),
  FOREIGN KEY (artista_id) REFERENCES artistas (artista_id),
  FOREIGN KEY (usuario_id) REFERENCES usuarios (usuario_id)
);
CREATE TABLE IF NOT EXISTS historico_reproducao (
  usuario_id INT NOT NULL,
  musica_id INT NOT NULL,
  PRIMARY KEY (usuario_id, musica_id),
  FOREIGN KEY (usuario_id) REFERENCES usuarios (usuario_id),
  FOREIGN KEY (musica_id) REFERENCES musicas (musica_id)
);
INSERT INTO planos (tipo, valor) VALUES
('gratuito', 0.00), ('familiar', 7.99), ('universitario', 5.99);
INSERT INTO artistas (nome) VALUES
('Walter Phoenix'), ('Freedie Shannon'),
('Lance Day'), ('Peter Strong');
INSERT INTO albuns (nome, artista_id) VALUES
('Envious', 1), ('Exuberant', 1),
('Hallowed Steam', 4), ('Incandescent', 3), ('Temporary Culture', 2);
INSERT INTO musicas (nome, album_id) VALUES
('Soul For Us', 1),
('Reflections Of Magic', 1),
('Dance With Her Own', 1),
('Troubles Of My Inner Fire', 2),
('Time Fireworks', 2),
('Magic Circus', 3),
('Honey, So Do I', 3),
("Sweetie, Let's Go Wild", 3),
('She Knows', 3),
('Fantasy For Me', 4),
('Celebration Of More', 4),
('Rock His Everything', 4),
('Home Forever', 4),
('Diamond Power', 4),
("Honey,Let's Be Silly", 4),
('Thang Of Thunder', 5),
('Words Of Her Life', 5),
('Without My Streets', 5);
INSERT INTO usuarios (nome, idade, plano_id) VALUES
('Thati', 23, 1),
('Cintia', 35, 2),
('Bill', 20, 3),
('Roger', 45, 1);
INSERT INTO usuario_seguindo_artista (usuario_id, artista_id) VALUES
(1, 1), (1, 2), (1, 3), (2, 1), (2, 3), (3, 4), (3, 1), (4, 2);
INSERT INTO historico_reproducao (usuario_id, musica_id) VALUES
(1, 1), (1, 6), (1, 14), (1, 16),
(2, 13), (2, 17), (2, 2), (2, 15),
(3, 4), (3, 16), (3, 6), (4, 3),
(4, 18), (4, 11);
