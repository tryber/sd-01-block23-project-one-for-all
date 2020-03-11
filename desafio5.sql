USE SpotifyClone;

CREATE VIEW top_2_hits_do_momento AS
SELECT ( SELECT title FROM songs WHERE id = ph.song_id ) AS cancao,
COUNT(song_id) AS reproducoes
FROM playback_history AS ph
GROUP BY song_id
ORDER BY reproducoes DESC
LIMIT 2;

SELECT * FROM top_2_hits_do_momento;