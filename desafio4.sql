USE SpotifyClone;

CREATE VIEW top_3_artistas AS
SELECT fa.artist_id,
( SELECT name FROM artists WHERE id = fa.artist_id ) AS artista,
COUNT(artist_id) AS seguidores
FROM follow_artist AS fa
GROUP BY artist_id
ORDER BY seguidores DESC
LIMIT 3;

SELECT * FROM top_3_artistas;
