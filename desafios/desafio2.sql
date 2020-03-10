USE SpotifyClone;
CREATE VIEW estatisticas_musicais as
SELECT (SELECT COUNT(*) FROM musicas) as cancoes,
(SELECT COUNT(*) FROM artistas) as artistas,
(SELECT COUNT(*) FROM albuns) as albuns;

SELECT * FROM estatisticas_musicais;
