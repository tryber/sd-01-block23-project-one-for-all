USE SpotifyClone;

DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON usuarios
FOR EACH ROW
BEGIN
DELETE FROM artistas_seguidos ar WHERE ar.usuario_id = OLD.usuario_id;
DELETE FROM historico_reproducao hr WHERE hr.usuario_id = OLD.usuario_id;
END $$

DELIMITER ;
DELETE FROM usuarios WHERE usuario_id = 15;
