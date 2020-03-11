USE SpotifyClone;

CREATE VIEW CancoesPremium AS
SELECT M.nome_musica AS nome,
COUNT(M.nome_musica) AS reproducoes
FROM planos AS P
INNER JOIN usuarios AS U
ON U.plano_id = P.plano_id
INNER JOIN historico_reproducao AS HR
ON U.usuario_id = HR.usuario_id
INNER JOIN musicas AS M
ON HR.musica_id = M.musica_id
WHERE P.plano_id = 3 OR P.plano_id = 2
GROUP BY 1
ORDER BY 1;

SELECT * FROM CancoesPremium;
