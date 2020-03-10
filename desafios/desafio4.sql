USE SpotifyClone;

CREATE VIEW top_3_artistas as
SELECT ar.artista_id, ar.nome_artista as artista,
COUNT(ar.artista_id) as seguidores 
FROM artistas_seguidos ars
INNER JOIN
artistas ar
ON ar.artista_id = ars.artista_id 
GROUP BY artista_id
ORDER BY 3 desc
LIMIT 3;

SELECT * FROM top_3_artistas;
