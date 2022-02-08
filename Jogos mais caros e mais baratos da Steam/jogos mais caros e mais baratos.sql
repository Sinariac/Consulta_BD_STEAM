use steam;
select nome as jogo, preco from steam_dados order by preco desc limit 5; -- Os 5 jogos mais caros da Steam
select nome as jogo, preco from steam_dados where preco >0 order by preco limit 5; -- Os 5 jogos mais baratos da Steam
