USE SpotifyClone;
CREATE VIEW historico_reproducao_usuarios AS
SELECT 
u.nome AS usuario,
m.nome AS nomes 
FROM historico_reproducao AS h
INNER JOIN musicas AS m
ON m.musica_id = h.musica_id
INNER JOIN usuarios as u
ON u.usuario_id = h.usuario_id
ORDER BY 1;

SELECT * FROM historico_reproducao_usuarios;
