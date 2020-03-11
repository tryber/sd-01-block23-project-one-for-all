USE SpotifyClone;
CREATE VIEW historico_reproducao_usuarios AS
SELECT u.nome_usuario as usuario, m.nome_musica as nome
FROM usuarios u
INNER JOIN
historico_reproducao hr
ON u.usuario_id = hr.usuario_id
INNER JOIN
musicas m
ON hr.musica_id = m.musica_id
ORDER BY 1;

SELECT * FROM historico_reproducao_usuarios;
