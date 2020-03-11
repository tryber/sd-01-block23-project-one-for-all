USE SpotifyClone;

CREATE VIEW faturamento_atual AS
SELECT MIN(P.valor_plano) AS faturamento_minimo,
MAX(P.valor_plano) AS faturamento_maximo,
AVG(P.valor_plano) AS faturamento_medio,
SUM(P.valor_plano) AS faturamento_total
FROM planos AS P 
INNER JOIN usuarios AS U
ON P.plano_id = U.plano_id;

SELECT * FROM faturamento_atual;
