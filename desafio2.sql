USE SpotifyClone;

CREATE VIEW estatisticas_musicais AS
SELECT ( SELECT COUNT(id) FROM songs ) AS cancoes,
( SELECT COUNT(id) FROM artists ) AS artistas,
COUNT(id) AS albuns
FROM albums;

SELECT * FROM estatisticas_musicais;
