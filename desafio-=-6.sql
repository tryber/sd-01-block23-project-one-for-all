CREATE VIEW faturamento_atual AS
select min(valores) as faturamento_minimo, max(valores) as faturamento_maximo, avg(valores) as faturamento_medio, sum(valores) as faturamento_total 
from(
select sum(plan_price) as valores
from SpotifyClone.subscription_plans as sp
inner join SpotifyClone.users_spotify as u
on u.subscription_plans_id = sp.subscription_plans_id
group by u.user_id) as tabela;
