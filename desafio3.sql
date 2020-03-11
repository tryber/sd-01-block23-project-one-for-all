USE SpotifyClone;
CREATE VIEW historico_reproducao_usuarios AS
SELECT u.nome as usuario, m.nome as nome
FROM SpotifyClone.historico_reproducao h
INNER JOIN SpotifyClone.usuario u
on h.usuario_id = u.usuario_id
INNER JOIN SpotifyClone.musica m
on m.musica_id = h.musica_id
order by u.nome asc;

SELECT * FROM historico_reproducao_usuarios;
