USE SpotifyClone;
DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(
id int
)
RETURNS DOUBLE READS SQL DATA
BEGIN
DECLARE cont_music DOUBLE;
SELECT COUNT(*) FROM SpotifyClone.historico_reproducao h
where h.usuario_id = id
INTO cont_music;
RETURN cont_music;
END $$
DELIMITER ;
SELECT quantidade_musicas_no_historico(17);
