USE SpotifyClone;

CREATE VIEW perfil_artistas as
SELECT al.artista_id, a.nome_artista as artista, al.album_id,
 al.nome_album as album, COUNT(ars.artista_id) as seguidores
 FROM albuns al
 INNER JOIN
 artistas a
 ON al.artista_id = a.artista_id
 INNER JOIN
 artistas_seguidos ars
 ON a.artista_id = ars.artista_id 
 GROUP BY al.album_id 
 order by 5 desc;
 
 SELECT * FROM perfil_artistas;
 