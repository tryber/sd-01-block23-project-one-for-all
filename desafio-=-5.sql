CREATE VIEW top_2_hits_do_momento AS
SELECT mu.music_name as cancao, count(rh.music_id)
FROM reproduction_history AS rh
INNER JOIN musics AS mu
on mu.music_id = rh.music_id
group by mu.music_name, rh.music_id
order by 2 desc
limit 2;
