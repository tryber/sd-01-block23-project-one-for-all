CREATE VIEW historico_reproducao_usuarios AS
SELECT user_name as usuario, music_name as nome
from reproduction_history as rh
inner join users_spotify as us
on rh.user_id = us.user_id
inner join musics as mu
on mu.music_id = rh.music_id
order by 1;
