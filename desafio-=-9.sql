use SpotifyClone;

DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN numbers INT) 
BEGIN 
SELECT A.artist_id,
A.artist_name AS artista,
B.album_id, 
B.album_name AS album
FROM artists AS A
INNER JOIN albums AS B
ON A.artist_id = B.artist_id
WHERE A.artist_id = numbers;
END
$$ DELIMITER ;

CALL albuns_do_artista(1);
