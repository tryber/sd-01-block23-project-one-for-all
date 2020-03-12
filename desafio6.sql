USE SpotifyClone;
CREATE VIEW faturamento_atual AS
SELECT
min(valores) as faturamento_minimo,
max(valores) as faturamento_maximo,
avg(valores) as faturamento_medio,
sum(valores) as faturamento_total
FROM 
(SELECT p.valor_plano as valores
FROM SpotifyClone.usuario u
inner join SpotifyClone.plano p
on p.plano_id = u.plano_id) as teste;
SELECT * FROM faturamento_atual;
