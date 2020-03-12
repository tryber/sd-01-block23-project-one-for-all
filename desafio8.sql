USE SpotifyClone;

DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
AFTER DELETE ON users
FOR EACH ROW
BEGIN
DELETE FROM follow_artist WHERE OLD.id = user_id;
DELETE FROM playback_history WHERE OLD.id = user_id;
DELETE FROM package_purchase WHERE OLD.id = user_id;
END $$
DELIMITER ;

SET foreign_key_checks = 0;
DELETE FROM users WHERE id = 15;
SET foreign_key_checks = 1;
