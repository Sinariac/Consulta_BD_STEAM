/* 30 generos menos jogado */

select nome as jogo, genero, tempo_medio_de_jogo from steam_dados where  tempo_medio_de_jogo > 0 order by  tempo_medio_de_jogo limit 30; 


/* 15 generos mais jogado */
select nome as jogo, genero, tempo_medio_de_jogo from steam_dados order by tempo_medio_de_jogo desc limit 15; 

