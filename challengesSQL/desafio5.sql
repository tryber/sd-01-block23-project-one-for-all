USE SpotifyClone;

CREATE VIEW top_2_hits_do_momento AS
SELECT M.nome_musica AS cancao,
COUNT(HR.usuario_id) AS reproducoes
FROM historico_reproducao AS HR
INNER JOIN musicas AS M
ON M.musica_id = HR.musica_id
GROUP BY 1
ORDER BY 2 DESC
LIMIT 2;

SELECT * FROM top_2_hits_do_momento;
