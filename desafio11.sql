USE SpotifyClone;
CREATE VIEW CancoesPremium AS
SELECT 
m.nome as nome,
count(h.historico_reproducao_id) as reproducoes
FROM SpotifyClone.historico_reproducao h
INNER JOIN SpotifyClone.usuario u
on u.usuario_id = h.usuario_id
INNER JOIN SpotifyClone.plano p
on p.plano_id = u.plano_id
inner join SpotifyClone.musica m
on m.musica_id = h.musica_id
where p.nome != 'gratuito'
group by 1;
SELECT * FROM CancoesPremium;
