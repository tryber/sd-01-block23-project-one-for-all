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

CREATE TABLE albuns (
album_id INT PRIMARY KEY AUTO_INCREMENT,
nome_album VARCHAR(100) NOT NULL,
artista_id INT,
FOREIGN KEY (artista_id) REFERENCES artistas (artista_id)
) engine = InnoDB;

CREATE TABLE musicas (
musica_id INT PRIMARY KEY AUTO_INCREMENT,
nome_musica VARCHAR(200) NOT NULL,
album_id INT,
FOREIGN KEY (album_id) REFERENCES albuns (album_id)
) engine = InnoDB;

CREATE TABLE historico_reproducao (
usuario_id INT,
musica_id INT,
FOREIGN KEY (usuario_id) REFERENCES usuarios (usuario_id),
FOREIGN KEY (musica_id) REFERENCES musicas (musica_id)
) engine = InnoDB;

INSERT INTO planos (plano_id, plano, valor_plano) VALUES
(1, 'gratuito',	0),
(2, 'familiar',	7.99),
(3, 'universitario', 5.99);

INSERT INTO usuarios (usuario_id, usuario, idade, plano_id) VALUES
(15, 'Thati', 23, 1),
(16, 'Cintia', 35, 2),
(17, 'Bill', 20, 3),
(18, 'Roger', 45, 1);

INSERT INTO artistas (artista_id, nome_artista) VALUES
(1, 'Walter Phoenix'),
(2,	'Freedie Shannon'),
(3,	'Lance Day'),
(4, 'Peter Strong');

INSERT INTO seguindo_artista (usuario_id, artista_id) VALUES
(15, 1),
(15, 2),
(15, 3),
(16, 1),
(16, 3),
(17, 4),
(17, 1),
(18, 2);

INSERT INTO albuns (album_id, nome_album, artista_id) VALUES 
(1, 'Envious', 1),
(2, 'Exuberant', 1),
(3, 'Hallowed Steam', 4),
(4, 'Incandescent', 3),
(5, 'Temporary Culture', 2);

INSERT INTO musicas (musica_id, nome_musica, album_id) VALUES
(1, 'Souls For Us', 1),
(2, 'Magic Circus', 3),
(3, 'Diamond Power', 4),
(4, 'Thangs of Thunder', 5),
(5, 'Home Forever', 4),
(6, 'Worlds Of Her Life', 5),
(7, 'Reflections Of Magic', 1),
(8, 'Honey, Lets Be Silly', 4),
(9, 'Troubles Of My Inner Fire', 2),
(10, 'Dance With Her Own', 1),
(11, 'Without My Streets', 5),
(12, 'Celebration Of More', 4),
(13, 'Time Fireworks', 2),
(14, 'Honey, So Do I', 3),
(15, 'Sweetie, Lets Go Wild', 3),
(16, 'She Knows', 3),
(17, 'Fantasy For Me', 4),
(18, 'Rock His Everything', 4);
