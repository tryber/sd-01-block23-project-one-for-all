CREATE DATABASE IF NOT EXISTS SpotifyClone;
USE SpotifyClone;

CREATE TABLE plano(
plano_id INT PRIMARY KEY auto_increment,
nome VARCHAR(30) NOT NULL,
valor_plano decimal(5,2) NOT NULL
) engine = InnoDB;

CREATE TABLE usuario(
usuario_id INT PRIMARY KEY auto_increment,
nome VARCHAR(80) NOT NULL,
idade INT NOT NULL,
plano_id INT NOT NULL,
FOREIGN KEY (plano_id) references plano(plano_id)
) engine = InnoDB;

CREATE TABLE artista(
artista_id INT PRIMARY KEY auto_increment,
nome VARCHAR(30) NOT NULL
) engine = InnoDB;

CREATE TABLE album(
album_id INT PRIMARY KEY auto_increment,
nome VARCHAR(30) NOT NULL,
artista_id INT NOT NULL,
FOREIGN KEY (artista_id) references artista(artista_id)
) engine = InnoDB;

CREATE TABLE musica(
musica_id INT PRIMARY KEY auto_increment,
nome VARCHAR(30) NOT NULL,
album_id INT NOT NULL,
FOREIGN KEY (album_id) references album(album_id)
) engine = InnoDB;

CREATE TABLE seguindo(
seguindo_id INT PRIMARY KEY auto_increment,
usuario_id INT NOT NULL,
artista_id INT NOT NULL,
FOREIGN KEY (usuario_id) references usuario(usuario_id),
FOREIGN KEY (artista_id) references artista(artista_id)
) engine = InnoDB;

CREATE TABLE historico_reproducao(
historico_reproducao_id INT PRIMARY KEY auto_increment,
usuario_id INT NOT NULL,
musica_id INT NOT NULL,
FOREIGN KEY (usuario_id) references usuario(usuario_id),
FOREIGN KEY (musica_id) references musica(musica_id)
) engine = InnoDB;

INSERT INTO plano (nome, valor_plano)
VALUES ('gratuito', 0),
('familiar', 7.99),
('universitário', 5.99);

INSERT INTO usuario (usuario_id, nome, idade, plano_id)
VALUES (15,'Thati',23, 1),
(16,'Cintia',35, 2),
(17,'Bill',20, 3),
(18,'Roger',45, 1);

INSERT INTO artista (nome)
VALUES ('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

INSERT INTO album (nome,artista_id)
VALUES ('Envious',1),
('Exuberant',1),
('Hallowed Steam',2),
('Incandescent',3),
('Temporary Culture',4);

INSERT INTO musica (nome,album_id)
VALUES ('Soul For Us',	1),
('Reflections Of Magic',1),
('Dance With Her Own',	1),
('Troubles Of My Inner Fire',	2),
('Time Fireworks',	2),
('Magic Circus',3),
('Honey, So Do I',	3),
("Sweetie, Let's Go Wild",	3),
('She Knows',	3),
('Fantasy For Me',	4),
('Celebration Of More',	4),
('Rock His Everything',	4),
('Home Forever',	4),
('Diamond Power',	4),
("Honey,Let's Be Silly",4),
('Thang Of Thunder',5),
('Words Of Her Life',5),
('Without My Streets',5);

INSERT INTO seguindo(usuario_id,artista_id)
VALUES(15,1),
(15,4),
(15,3),
(16,1),
(16,3),
(17,2),
(17,1),
(18,4);

INSERT INTO historico_reproducao(usuario_id,musica_id)
VALUES(15,1),
(15,6),
(15,14),
(15,16),
(16,13),
(16,17),
(16,2),
(16,15),
(17,4),
(17,16),
(17,6),
(18,3),
(18,18),
(18,11);
