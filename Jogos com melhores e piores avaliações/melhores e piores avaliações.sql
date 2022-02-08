use steam;

select nome as jogo, avaliacoes_positivas from steam_dados order by avaliacoes_positivas desc limit 5; -- Os 5 jogos mais bem avaliados
select nome as jogo, avaliacoes_negativas from steam_dados order by avaliacoes_negativas desc limit 5; -- Os 5 jogos com piores avaliações da Steam