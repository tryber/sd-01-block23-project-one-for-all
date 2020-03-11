USE SpotifyClone;

CREATE VIEW historico_reproducao_usuarios AS
SELECT U.usuario,
M.nome_musica AS nome
FROM historico_reproducao AS HR
INNER JOIN usuarios AS U
ON HR.usuario_id = U.usuario_id
INNER JOIN musicas AS M
ON M.musica_id = HR.musica_id
ORDER BY U.usuario, 2 ASC;

SELECT * FROM historico_reproducao_usuarios;
