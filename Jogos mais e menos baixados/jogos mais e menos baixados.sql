/* Jogos mais baixados */
select nome as jogo, proprietarios from steam_dados order by proprietarios;

/*Jogos com baixa adesão */
select nome as jogo, proprietarios from steam_dados having (proprietarios <= 100000)order by proprietarios; 