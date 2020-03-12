USE SpotifyClone;

CREATE VIEW CancoesPremium AS
SELECT ( SELECT title FROM songs WHERE id = song_id ) AS nome,
COUNT(song_id) AS reproducoes
FROM (
SELECT song_id
FROM playback_history
WHERE user_id IN (
SELECT user_id
FROM package_purchase
WHERE package_id IN (
SELECT id
FROM packages
WHERE name = 'familiar' OR name = 'universitário'
) ) ) AS song_play
GROUP BY song_id
ORDER BY nome ASC;

SELECT * FROM CancoesPremium;
