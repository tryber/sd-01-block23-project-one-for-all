USE SpotifyClone;

DELIMITER $$
CREATE PROCEDURE albuns_do_artista (value1 INT)
BEGIN
SELECT value1 as artista_id, ar.nome_artista as artista,
al.album_id, al.nome_album as album FROM albuns al
INNER JOIN
artistas ar
ON ar.artista_id = al.artista_id
WHERE al.artista_id = value1;
END $$
DELIMITER ;

CALL albuns_do_artista(1);
