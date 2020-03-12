CREATE VIEW top_3_artistas AS
SELECT ar.artist_id as artista_id, ar.artist_name as artista, count(ar.artist_name) as seguidores
from artists as ar
inner join follow_artists as fa
on ar.artist_id = fa.artist_id
group by ar.artist_id, ar.artist_name
order by 3 desc
LIMIT 3;