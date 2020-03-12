USE SpotifyClone;
DELIMITER $$

CREATE PROCEDURE albuns_do_artista(
IN id int
)
BEGIN
    SELECT
    a.artista_id as artista_id,
    a.nome as artista,
    alb.album_id as album_id,
	alb.nome as album
    FROM SpotifyClone.album alb
    INNER JOIN SpotifyClone.artista a
    on a.artista_id = 1
    WHERE alb.artista_id = 1;
END $$

DELIMITER ;

CALL albuns_do_artista(1);
