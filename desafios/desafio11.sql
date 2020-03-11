USE SpotifyClone;
CREATE VIEW CancoesPremium as
SELECT m.nome_musica as nome, COUNT(m.nome_musica) as reproducoes
FROM historico_reproducao hr
INNER JOIN
musicas m
ON m.musica_id = hr.musica_id
INNER JOIN
usuarios u
ON hr.usuario_id = u.usuario_id
INNER JOIN planos p
ON p.plano_id = u.plano_id
WHERE p.nome_plano = 'familiar' OR p.nome_plano = 'universitario'
GROUP BY m.nome_musica
ORDER BY 1;

SELECT * FROM CancoesPremium;
