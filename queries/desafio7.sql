CREATE VIEW perfil_artistas AS
SELECT ART.artista_id,
ART.nome_artista AS artista,
ALB.nome_album AS album,
ALB.album_id,
COUNT(SART.artista_id) AS seguidores
FROM SpotifyClone.artistas AS ART
INNER JOIN SpotifyClone.albuns AS ALB
ON ART.artista_id = ALB.artista_id
INNER JOIN SpotifyClone.seguindo_artista AS SART
ON SART.artista_id = ALB.artista_id
GROUP BY album_id
ORDER BY 5 DESC;

SELECT * FROM perfil_artistas;
