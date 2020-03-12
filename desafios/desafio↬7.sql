USE SpotifyClone;
CREATE VIEW perfil_artistas AS

SELECT 
a.artista_id,
a.nome AS artista,
b.album_id,
b.nome AS album,
COUNT(u.usuario_id) AS seguidores
FROM SpotifyClone.artistas AS a
INNER JOIN SpotifyClone.albuns AS b
ON a.artista_id = b.artista_id
INNER JOIN SpotifyClone.usuario_seguindo_artista AS u
ON u.artista_id = b.artista_id
GROUP BY  b.album_id, u.artista_id
ORDER BY 5 DESC;

SELECT * FROM perfil_artistas;
