use `bdsteam`;

select distinct year(`data_lancamento`) as ano_lancamento, count(*) as "quantidade_jogos" from steam_dados group by year(`data_lancamento`) order by year(`data_lancamento`); -- quantidade de jogos lançados por ano