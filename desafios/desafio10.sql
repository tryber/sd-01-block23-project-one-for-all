USE SpotifyClone;

DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico (value1 INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantity INT;
SELECT COUNT(*) as quantidade_musicas_no_historico FROM historico_reproducao hr WHERE hr.usuario_id = value1 INTO quantity;
RETURN quantity;
END $$

SELECT quantidade_musicas_no_historico(17);
