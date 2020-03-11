USE SpotifyClone;

CREATE VIEW top_3_artistas AS
SELECT A.artista_id,
A.nome_artista AS artista,
COUNT(U.usuario_id) AS seguidores
FROM artistas AS A
INNER JOIN seguindo_artista AS U
ON A.artista_id = U.artista_id
GROUP BY 1, 2
ORDER BY seguidores DESC
LIMIT 3;

SELECT * FROM top_3_artistas;
