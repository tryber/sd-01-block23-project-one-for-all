USE SpotifyClone;
CREATE VIEW estatisticas_musicais AS
SELECT 
(SELECT count(*) FROM SpotifyClone.musica) as cancoes,
(SELECT count(*) FROM SpotifyClone.artista) as artistas,
(SELECT count(*) FROM SpotifyClone.album) as albuns;


SELECT * FROM estatisticas_musicais;
