USE SpotifyClone;

DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(usuario INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE musicas_no_historico INT;
SELECT COUNT(*)
FROM historico_reproducao
WHERE usuario_id = usuario INTO musicas_no_historico;
RETURN musicas_no_historico;
END $$

DELIMITER ;

SELECT quantidade_musicas_no_historico(17);
