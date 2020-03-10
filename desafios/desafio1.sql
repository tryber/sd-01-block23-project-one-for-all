CREATE DATABASE IF NOT EXISTS SpotifyClone;

USE SpotifyClone;

CREATE TABLE planos (
plano_id INT PRIMARY KEY AUTO_INCREMENT,
plano_name VARCHAR(255) NOT NULL,
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