CREATE VIEW CancoesPremium AS
SELECT
  (
    SELECT music_name
    FROM musics AS M
    WHERE M.music_id = H.music_id
  ) AS nome,
  COUNT(H.user_id) AS reproducoes
FROM users_spotify AS U
INNER JOIN reproduction_history AS H
ON U.user_id = H.user_id
WHERE U.subscription_plans_id IN(2, 3)
GROUP BY U.user_id, music_id
ORDER BY 1;
