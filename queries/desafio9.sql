use SpotifyClone;

DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN id INT) 
BEGIN 
SELECT ART.artista_id,
ART.nome_artista AS artista,
ALB.album_id, 
ALB.nome_album AS album
FROM artistas AS ART
INNER JOIN albuns AS ALB
ON ART.artista_id = ALB.artista_id
WHERE ART.artista_id = id;
END

$$ DELIMITER ;

CALL albuns_do_artista(1);
