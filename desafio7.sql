USE SpotifyClone;

CREATE VIEW perfil_artistas AS
SELECT ad.artist_id AS artista_id,
( SELECT name FROM artists WHERE id = ad.artist_id ) AS artista,
album_id,
( SELECT title FROM albums WHERE id = ad.album_id ) AS album,
( SELECT COUNT(artist_id) FROM follow_artist GROUP BY artist_id HAVING artist_id = ad.artist_id) AS seguidores
FROM artist_discography AS ad
ORDER BY seguidores DESC, album ASC;

SELECT * FROM perfil_artistas;
