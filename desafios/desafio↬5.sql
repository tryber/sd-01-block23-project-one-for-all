USE SpotifyClone;
CREATE VIEW top_2_hits_do_momento AS
SELECT 
(
SELECT nome FROM SpotifyClone.musicas
WHERE musicas.musica_id = SpotifyClone.historico_reproducao.musica_id
) AS cancao,
COUNT(musica_id) AS reproducoes
FROM SpotifyClone.historico_reproducao
GROUP BY musica_id
ORDER BY 2 DESC
LIMIT 2;

SELECT * FROM top_2_hits_do_momento;
