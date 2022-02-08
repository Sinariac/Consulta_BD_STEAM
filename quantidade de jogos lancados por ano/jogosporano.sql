use `Steam`;

select distinct year(`release_date`) as ano_lancamento, count(*) as "quantidade_jogos" from steam group by year(`release_date`) order by year(`release_date`); -- quantidade de jogos lançados por ano