USE SpotifyClone;
CREATE VIEW top_2_hits_do_momento as
SELECT m.nome_musica as cancao, COUNT(m.nome_musica) as reproducoes
FROM musicas m
INNER JOIN
historico_reproducao hr
ON m.musica_id = hr.musica_id
GROUP BY hr.musica_id
ORDER BY 2 DESC
LIMIT 2;

SELECT * FROM top_2_hits_do_momento;
