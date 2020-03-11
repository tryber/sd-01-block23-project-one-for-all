CREATE VIEW faturamento_atual AS
SELECT MIN(valor_plano) AS faturamento_minimo,
MAX(PL.valor_plano) AS faturamento_maximo,
AVG(PL.valor_plano) AS faturamento_medio,
SUM(PL.valor_plano) AS faturamento_total
FROM SpotifyClone.planos AS PL
INNER JOIN SpotifyClone.usuarios AS US
ON US.plano_id = PL.plano_id;

SELECT * FROM faturamento_atual;
