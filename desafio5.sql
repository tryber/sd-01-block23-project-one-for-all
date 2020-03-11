USE SpotifyClone;
CREATE VIEW top_2_hits_do_momento AS
SELECT m.nome as cancao, count(h.musica_id) AS reproducoes
FROM SpotifyClone.historico_reproducao h
INNER JOIN SpotifyClone.musica m
on h.musica_id = m.musica_id
group by h.musica_id
order by 2 DESC
LIMIT 2;

SELECT * FROM top_2_hits_do_momento;
