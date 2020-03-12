USE SpotifyClone;

DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
    BEFORE DELETE ON usuario
    FOR EACH ROW
BEGIN
    DELETE FROM historico_reproducao
    where historico_reproducao.usuario_id = OLD.usuario_id;
    DELETE FROM seguindo
    where seguindo.usuario_id = OLD.usuario_id;
END; $$
DELIMITER ;

DELETE FROM usuario where usuario_id = 15;
