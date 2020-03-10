CREATE DATABASE IF NOT EXISTS SpotifyClone;

USE SpotifyClone;

CREATE TABLE planos (
plano_id INT PRIMARY KEY AUTO_INCREMENT,
nome_plano VARCHAR(255) NOT NULL,
valor_plano DOUBLE NOT NULL
);

CREATE TABLE artistas (
artista_id INT PRIMARY KEY AUTO_INCREMENT,
nome_artista VARCHAR(255) NOT NULL
);

CREATE TABLE albuns (
album_id INT PRIMARY KEY AUTO_INCREMENT,
nome_album VARCHAR(255) NOT NULL UNIQUE,
artista_id INT NOT NULL,
FOREIGN KEY (artista_id) REFERENCES artistas(artista_id)
);

CREATE TABLE musicas (
musica_id INT PRIMARY KEY AUTO_INCREMENT,
nome_musica VARCHAR(255) NOT NULL,
album_id INT NOT NULL,
FOREIGN KEY (album_id) REFERENCES albuns(album_id)
);

CREATE TABLE usuarios (
usuario_id INT PRIMARY KEY AUTO_INCREMENT,
nome_usuario VARCHAR(255) NOT NULL,
idade INT NOT NULL,
plano_id INT NOT NULL,
FOREIGN KEY (plano_id) REFERENCES planos(plano_id)
);

CREATE TABLE artistas_seguidos (
usuario_id INT NOT NULL,
artista_id INT NOT NULL,
FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id),
FOREIGN KEY (artista_id) REFERENCES artistas(artista_id)
);

CREATE TABLE historico_reproducao (
usuario_id INT NOT NULL,
musica_id INT NOT NULL,
FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id),
FOREIGN KEY (musica_id) REFERENCES musicas(musica_id)
);

INSERT INTO planos (nome_plano, valor_plano)
VALUES ('gratuito', 0.00), ('familiar', 7.99), ('universitario', 5.99);

INSERT INTO artistas (nome_artista)
VALUES ('Walter Phoenix'), ('Freedie Shannon'),
('Lance Day'), ('Peter Strong');

INSERT INTO albuns (nome_album, artista_id) VALUES ('Envious', 1), ('Exuberant', 1),
('Hallowed Steam', 4), ('Incandescent', 3), ('Temporary Culture', 2);

INSERT INTO musicas (nome_musica, album_id) VALUES
('Soul For Us', 1), ('Magic Circus', 3), ('Diamond Power', 4),
('Thang Of Thunder', 5), ('Home Forever', 4), ('Words Of Her Life', 5),
('Reflections Of Magic', 1), ('Honey, Lets Be Silly', 4), ('Troubles Of My Inner Fire', 2),
('Dance With Her Own', 1), ('Without My Streets', 5), ('Celebration Of More', 4),
('Time Fireworks', 2), ('Honey, So Do I', 3), ('Sweetie, Lets Go Wild', 3), ('She Knows', 3),
('Rock His Everything', 4), ('Fantasy For Me', 4);

INSERT INTO usuarios (usuario_id, nome_usuario, idade, plano_id) VALUES
(15, 'Thati', 23, 1),
(16, 'Cintia', 35, 2),
(17, 'Bill', 20, 3),
(18, 'Roger', 45, 1);

INSERT INTO artistas_seguidos (usuario_id, artista_id) VALUES
(15, 1), (15, 2), (15, 3), (16, 1), (16, 3), (17, 4), (17, 1), (18, 2);

INSERT INTO historico_reproducao (usuario_id, musica_id) VALUES
(15, 1), (15, 2), (15, 3), (15, 4),
(16, 5), (16, 6), (16, 7), (16, 8),
(17, 9), (17, 4), (17, 1), (18, 10),
(18, 11), (18, 12);