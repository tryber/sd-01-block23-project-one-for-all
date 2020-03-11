USE SpotifyClone;

CREATE VIEW perfil_artistas AS
SELECT AR.artista_id,
AR.nome_artista AS artista,
AL.album_id, 
AL.nome_album AS album,
COUNT(SA.usuario_id) AS seguidores
FROM artistas AS AR
INNER JOIN albuns AS AL
ON AL.artista_id = AR.artista_id
INNER JOIN seguindo_artista AS SA
ON SA.artista_id = AR.artista_id
GROUP BY 3
ORDER BY 5 DESC;

SELECT * FROM perfil_artistas;
