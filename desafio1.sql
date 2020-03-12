CREATE DATABASE IF NOT EXISTS SpotifyClone;

USE SpotifyClone;

CREATE TABLE IF NOT EXISTS users (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(50) NOT NULL,
  age INT UNSIGNED NOT NULL,
  PRIMARY KEY (id)
) ENGINE = InnoDB;

INSERT INTO users(id, name, age)
VALUES (15, 'Thati', 23), (16, 'Cintia', 35), (17, 'Bill', 20), (18, 'Roger', 45);

CREATE TABLE IF NOT EXISTS packages (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(50) NOT NULL,
  cost DOUBLE UNSIGNED NOT NULL,
  PRIMARY KEY (id)
) ENGINE = InnoDB;

INSERT INTO packages(name, cost)
VALUES ('gratuito', 0), ('familiar', 7.99), ('universitário', 5.99);

CREATE TABLE IF NOT EXISTS songs (
  id INT NOT NULL AUTO_INCREMENT,
  title VARCHAR(50) NOT NULL,
  PRIMARY KEY (id)
) ENGINE = InnoDB;

INSERT INTO songs(title)
VALUES ('Soul For Us'), ('Magic Circus'), ('Diamond Power'), ('Thang Of Thunder'), ('Home Forever'), ('Words Of Her Life'), ('Reflections Of Magic'),
('Honey, So Do I'), ('Sweetie, Let\'s Go Wild'), ('She Knows'), ('Fantasy For Me'), ('Rock His Everything'), ('Honey,Let\'s Be Silly'), 
('Troubles Of My Inner Fire'), ('Dance With Her Own'), ('Time Fireworks'), ('Without My Streets'), ('Celebration Of More');

CREATE TABLE IF NOT EXISTS albums (
  id INT NOT NULL AUTO_INCREMENT,
  title VARCHAR(50) NOT NULL,
  PRIMARY KEY (id)
) ENGINE = InnoDB;

INSERT INTO albums(title)
VALUES ('Envious'), ('Exuberant'), ('Hallowed Steam'), ('Incandescent'), ('Temporary Culture');

CREATE TABLE IF NOT EXISTS artists (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(50) NOT NULL,
  PRIMARY KEY (id)
) ENGINE = InnoDB;

INSERT INTO artists(name)
VALUES ('Walter Phoenix'), ('Peter Strong'), ('Lance Day'), ('Freedie Shannon');

CREATE TABLE IF NOT EXISTS playback_history (
  user_id INT NOT NULL,
  song_id INT NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users(id),
  FOREIGN KEY (song_id) REFERENCES songs(id)
) ENGINE = InnoDB;

INSERT INTO playback_history(user_id, song_id)
VALUES (15, 1), (15, 2), (15, 3), (15, 4), (16, 5), (16, 6), (16, 7), (16, 13), (17, 14), (17, 4), (17, 2), (18, 15), (18, 17), (18, 18);

CREATE TABLE IF NOT EXISTS package_purchase (
  user_id INT NOT NULL,
  package_id INT NOT NULL,
  UNIQUE INDEX user_id_UNIQUE (user_id ASC),
  FOREIGN KEY (user_id) REFERENCES users(id),
  FOREIGN KEY (package_id) REFERENCES packages(id)
) ENGINE = InnoDB;

INSERT INTO package_purchase(user_id, package_id)
VALUES (15, 1), (16, 2), (17, 3), (18,1);

CREATE TABLE IF NOT EXISTS follow_artist (
  user_id INT NOT NULL,
  artist_id INT NOT NULL,
  PRIMARY KEY (user_id, artist_id),
  FOREIGN KEY (user_id) REFERENCES users(id),
  FOREIGN KEY (artist_id) REFERENCES artists(id)
) ENGINE = InnoDB;

INSERT INTO follow_artist(user_id, artist_id)
VALUES (15, 1), (15, 4), (15, 3), (16, 1), (16, 3), (17, 2), (17, 1), (18, 4);

CREATE TABLE IF NOT EXISTS artist_discography (
  artist_id INT NOT NULL,
  album_id INT NOT NULL,
  PRIMARY KEY (artist_id, album_id),
  UNIQUE INDEX album_id_UNIQUE (album_id ASC),
  FOREIGN KEY (artist_id) REFERENCES artists(id),
  FOREIGN KEY (album_id) REFERENCES albums(id)
) ENGINE = InnoDB;

INSERT INTO artist_discography(artist_id, album_id)
VALUES (1,1), (1,2), (2,3), (3,4), (4,5);

CREATE TABLE IF NOT EXISTS track_album (
  album_id INT NOT NULL,
  song_id INT NOT NULL,
  PRIMARY KEY (album_id, song_id),
  FOREIGN KEY (album_id) REFERENCES albums(id),
  FOREIGN KEY (song_id) REFERENCES songs (id)
) ENGINE = InnoDB;

INSERT INTO track_album(album_id, song_id)
VALUES (1,1), (1,7), (1,15), (2,14), (2,16), (3,2), (3,8), (3,9), (3,10), (4,11), (4,18), (4,12), (4,5), (4,3), (4,13), (5,4), (5,6), (5,17);
