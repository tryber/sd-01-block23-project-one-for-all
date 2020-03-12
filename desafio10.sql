USE SpotifyClone;

DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(user_id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE qnt_song_history INT;
SELECT COUNT(ph.user_id)
FROM playback_history AS ph
WHERE ph.user_id = user_id INTO qnt_song_history;
RETURN qnt_song_history;
END $$
DELIMITER ;
    
SELECT quantidade_musicas_no_historico(17);
