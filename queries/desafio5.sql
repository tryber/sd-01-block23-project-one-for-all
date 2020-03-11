CREATE VIEW top_2_hits_do_momento AS
SELECT MU.nome_musica AS cancao,
COUNT(MU.nome_musica) AS reproducoes
FROM SpotifyClone.musicas AS MU
INNER JOIN SpotifyClone.historico_reproducao AS HIS
ON MU.musica_id = HIS.musica_id
GROUP BY MU.nome_musica
ORDER BY reproducoes DESC
LIMIT 2;

SELECT * FROM top_2_hits_do_momento;
