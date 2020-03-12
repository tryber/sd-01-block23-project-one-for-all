USE SpotifyClone;
CREATE VIEW faturamento_atual AS
SELECT
MIN(valor) AS faturamento_minimo,
MAX(valor) AS faturamento_maximo,
AVG(valor) AS faturamento_medio,
SUM(valor) AS faturamento_total
FROM SpotifyClone.planos AS P
INNER JOIN SpotifyClone.usuarios AS U
ON P.plano_id = U.plano_id;

SELECT * FROM faturamento_atual;
