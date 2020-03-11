CREATE VIEW historico_reproducao_usuarios AS
SELECT US.usuario AS usuario,
MU.nome_musica AS nome
FROM SpotifyClone.usuarios AS US
INNER JOIN SpotifyClone.historico_reproducao AS SPH
ON US.usuario_id = SPH.usuario_id
INNER JOIN SpotifyClone.musicas AS MU
ON MU.musica_id = SPH.musica_id
ORDER BY US.usuario;

SELECT * FROM historico_reproducao_usuarios;
