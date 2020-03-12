CREATE VIEW perfil_artistas AS
SELECT ar.artist_id, ar.artist_name as artista, al.album_id, al.album_name as album, count(ar.artist_name) as seguidores
from artists as ar
inner join follow_artists as fa
on ar.artist_id = fa.artist_id
inner join albums as al
on al.artist_id = fa.artist_id
group by al.album_id
order by 5 desc, 4 asc;
