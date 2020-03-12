USE SpotifyClone;

CREATE VIEW faturamento_atual AS
SELECT ROUND(MIN(cost),2) AS faturamento_minimo,
ROUND(MAX(cost),2) AS faturamento_maximo,
ROUND(AVG(cost),6) AS faturamento_medio,
ROUND(SUM(cost),2) AS faturamento_total
FROM (
SELECT (SELECT cost FROM packages WHERE id = pp.package_id) AS cost
FROM package_purchase AS pp
) AS check_cost;

SELECT * FROM faturamento_atual;
