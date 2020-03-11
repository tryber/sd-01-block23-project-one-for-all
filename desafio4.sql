USE SpotifyClone;
CREATE VIEW top_3_artistas AS
SELECT a.artista_id, a.nome as artista, count(s.artista_id) as seguidores
FROM SpotifyClone.seguindo s
INNER JOIN SpotifyClone.artista a
on a.artista_id = s.artista_id
group by s.artista_id
order by 3 DESC
LIMIT 3;

SELECT * FROM top_3_artistas;
