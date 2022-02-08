use steam;

select name as jogo, price from steam order by price desc limit 5; -- Os 5 jogos mais caros da Steam
select name as jogo, price from steam where price >0 order by price limit 5; -- Os 5 jogos mais baratos da Steam