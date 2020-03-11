USE SpotifyClone;

CREATE VIEW CancoesPremium AS
SELECT M.nome_musica AS nome,
(HR.usuario_id) AS reproducoes
FROM planos AS P
INNER JOIN usuarios AS U
ON U.plano_id <> 1
INNER JOIN historico_reproducao AS HR
ON U.usuario_id = HR.usuario_id
INNER JOIN musicas AS M
ON HR.musica_id = M.musica_id
GROUP BY 1, 2
ORDER BY 1;

SELECT * FROM CancoesPremium;

--INCOMPLETO
