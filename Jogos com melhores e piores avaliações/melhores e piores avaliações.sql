use steam;

select name as jogo, positive_ratings from steam order by positive_ratings desc limit 5; -- Os 5 jogos mais bem avaliados
select name as jogo, negative_ratings from steam order by negative_ratings desc limit 5; -- Os 5 jogos com piores avaliações da Steam