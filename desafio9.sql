USE SpotifyClone;

DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN artist_id INT)
BEGIN
SELECT ( SELECT id FROM artists WHERE id = artist_id ) AS artista_id,
( SELECT name FROM artists WHERE id = artist_id ) AS artista,
ad.album_id,
( SELECT title FROM albums WHERE id = ad.album_id ) AS album
FROM artist_discography AS ad
WHERE artist_id = ad.artist_id;
END $$
DELIMITER ;

CALL albuns_do_artista(1);
