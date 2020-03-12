CREATE VIEW estatisticas_musicais AS
SELECT 
(SELECT count(music_id) FROM SpotifyClone.musics) AS cancoes,
(SELECT count(artist_id) FROM SpotifyClone.artists) AS artistas,
(SELECT count(album_id) FROM SpotifyClone.albums) AS albuns
FROM SpotifyClone.albums
LIMIT 1;
