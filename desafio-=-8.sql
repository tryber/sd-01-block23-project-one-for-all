USE SpotifyClone;

DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON users_spotify
FOR EACH ROW
BEGIN
  DELETE FROM follow_artists
  WHERE user_id = OLD.user_id;
  DELETE FROM reproduction_history
  WHERE user_id = OLD.user_id;
END; $$
DELIMITER ;

DELETE FROM users_spotify
WHERE user_id = 1;

SELECT * FROM SpotifyClone.users_spotify;
SELECT * FROM SpotifyClone.reproduction_history;
SELECT * FROM SpotifyClone.follow_artists;
