CREATE VIEW top_3_artistas AS
SELECT ART.artista_id,
ART.nome_artista AS artista,
COUNT(SEG.artista_id) AS seguidores
FROM SpotifyClone.artistas AS ART
INNER JOIN SpotifyClone.seguindo_artista AS SEG
ON ART.artista_id = SEG.artista_id
GROUP BY ART.artista_id
ORDER BY 3 DESC
LIMIT 3;

SELECT * FROM top_3_artistas;
