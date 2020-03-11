USE SpotifyClone;
SHOW TABLES;

SELECT ( SELECT name FROM users WHERE id = ph.user_id ) AS usuario,
( SELECT title FROM songs WHERE id = ph.song_id) AS nome
FROM playback_history AS ph
ORDER BY usuario ASC, nome ASC;
