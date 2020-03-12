USE SpotifyClone;
DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(val INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE total INT;
SELECT COUNT(musica_id)  
FROM historico_reproducao
WHERE usuario_id = val INTO total;
RETURN total;
END
$$ DELIMITER ;
SELECT quantidade_musicas_no_historico(3);
