USE SpotifyClone;

SELECT
  COUNT(musica_id) AS cancoes,
  (
    SELECT
      COUNT(artista_id)
    FROM
      artistas
  ) AS artista
FROM
  musicas;

-- INCOMPLETO
