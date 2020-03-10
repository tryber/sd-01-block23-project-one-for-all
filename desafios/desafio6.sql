USE SpotifyClone;

CREATE VIEW faturamento_atual AS
SELECT ROUND(MIN(p.valor_plano), 2) as faturamento_minimo,
ROUND(MAX(p.valor_plano), 2) as faturamento_maximo,
ROUND(AVG(p.valor_plano), 6) as faturamento_medio,
ROUND(SUM(p.valor_plano), 2) as faturamento_total
FROM planos p 
INNER JOIN
usuarios u
ON p.plano_id = u.plano_id;

SELECT * FROM faturamento_atual;
