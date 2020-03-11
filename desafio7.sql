USE SpotifyClone;
CREATE VIEW perfil_artistas AS
SELECT 
	a.artista_id,
    a.nome as artista,
    alb.album_id,
    alb.nome as album,
    count(s.seguindo_id) as seguidores
FROM SpotifyClone.album alb
INNER JOIN SpotifyClone.artista a
on a.artista_id = alb.artista_id
INNER JOIN SpotifyClone.seguindo s
on s.artista_id = a.artista_id
group by album_id
order by 5 DESC;

SELECT * FROM perfil_artistas;