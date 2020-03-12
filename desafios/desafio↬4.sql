USE SpotifyClone;
CREATE VIEW top_3_artistas AS
SELECT
U.artista_id,
A.nome AS artista,
COUNT(U.usuario_id) AS seguidores
FROM SpotifyClone.usuario_seguindo_artista AS U
INNER JOIN SpotifyClone.artistas AS A
ON U.artista_id = A.artista_id
GROUP BY U.artista_id
ORDER BY 3 DESC
LIMIT 3;

SELECT * FROM top_3_artistas;
