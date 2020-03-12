CREATE DATABASE IF NOT EXISTS SpotifyClone;

USE SpotifyClone;

CREATE TABLE subscription_plans (
  subscription_plans_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  plan_type VARCHAR(30) NOT NULL,
  plan_price DECIMAL(9,2) NOT NULL
 ) ENGINE = InnoDB;

CREATE TABLE users_spotify (
  user_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_name VARCHAR(50) NOT NULL,
  user_age INT NOT NULL,
  subscription_plans_id INT NOT NULL,
    FOREIGN KEY (subscription_plans_id)
    REFERENCES subscription_plans (subscription_plans_id)
  ) ENGINE = InnoDB;

CREATE TABLE artists (
  artist_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  artist_name VARCHAR(80) NOT NULL
  ) ENGINE = InnoDB;

CREATE TABLE albums (
  album_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  album_name VARCHAR(80) NOT NULL,
  artist_id INT NOT NULL,
  FOREIGN KEY (artist_id)
  REFERENCES artists (artist_id)
  ) ENGINE = InnoDB;

CREATE TABLE musics (
  music_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  music_name VARCHAR(100) NOT NULL,
  album_id INT NOT NULL,
  FOREIGN KEY (album_id)
  REFERENCES albums (album_id)
  ) ENGINE = InnoDB;

CREATE TABLE follow_artists (
  user_id INT NOT NULL ,
  artist_id INT NOT NULL,
  FOREIGN KEY (user_id)
  REFERENCES users_spotify (user_id),
  FOREIGN KEY (artist_id)
  REFERENCES artists (artist_id)
  ) ENGINE = InnoDB;

CREATE TABLE reproduction_history (
  user_id INT NOT NULL ,
  music_id INT NOT NULL,
    FOREIGN KEY (user_id)
    REFERENCES users_spotify (user_id),
    FOREIGN KEY (music_id)
    REFERENCES musics (music_id)
    )
ENGINE = InnoDB;

INSERT INTO subscription_plans (plan_type, plan_price) VALUES
('gratuito', 0.00), ('familiar', 7.99), ('universitario', 5.99);
INSERT INTO artists (artist_name) VALUES
('Walter Phoenix'), ('Freedie Shannon'),
('Lance Day'), ('Peter Strong');
INSERT INTO albums (album_name, artist_id) VALUES
('Envious', 1), ('Exuberant', 1),
('Hallowed Steam', 4), ('Incandescent', 3), ('Temporary Culture', 2);
INSERT INTO musics (music_name, album_id) VALUES
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
INSERT INTO users_spotify (user_name, user_age, subscription_plans_id) VALUES
('Thati', 23, 1),
('Cintia', 35, 2),
('Bill', 20, 3),
('Roger', 45, 1);
INSERT INTO follow_artists (user_id, artist_id) VALUES
(1, 1), (1, 2), (1, 3), (2, 1), (2, 3), (3, 4), (3, 1), (4, 2);
INSERT INTO reproduction_history (user_id, music_id) VALUES
(1, 1), (1, 6), (1, 14), (1, 16),
(2, 13), (2, 17), (2, 2), (2, 15),
(3, 4), (3, 16), (3, 6), (4, 3),
(4, 18), (4, 11);
