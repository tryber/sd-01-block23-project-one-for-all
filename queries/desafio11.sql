CREATE VIEW CancoesPremium AS
SELECT MU.nome_musica AS nome,
COUNT(MU.nome_musica) AS reproducoes
FROM SpotifyClone.musicas AS MU 
INNER JOIN SpotifyClone.historico_reproducao AS HIS
ON HIS.musica_id = MU.musica_id
INNER JOIN SpotifyClone.usuarios AS US
ON US.usuario_id = HIS.usuario_id
INNER JOIN SpotifyClone.planos AS PLA
ON US.plano_id = PLA.plano_ID
WHERE US.plano_id <> 1
GROUP BY 1
ORDER BY 1;

SELECT * FROM CancoesPremium;
