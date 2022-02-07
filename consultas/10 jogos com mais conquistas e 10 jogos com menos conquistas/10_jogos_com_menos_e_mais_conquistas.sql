USE `bdsteam`;

SELECT `nome` AS jogo, `conquistas`
FROM `steam_dados`
ORDER BY `conquistas` DESC LIMIT 10; -- 10 jogos com mais conquistas.

SELECT `nome` AS jogo, `conquistas`
FROM `steam_dados`
where `conquistas` > 0 
ORDER BY `conquistas` LIMIT 10; -- 10 jogos com menos conquistas.