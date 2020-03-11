USE SpotifyClone;
DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artista_id INT)
BEGIN
SELECT AL.artista_id,
AR.nome_artista AS artista,
AL.album_id,
AL.nome_album AS album
FROM albuns AS AL
INNER JOIN artistas AS AR
ON AL.artista_id = AR.artista_id
WHERE AL.artista_id = artista_id;
END $$

DELIMITER ;

CALL albuns_do_artista(15);
