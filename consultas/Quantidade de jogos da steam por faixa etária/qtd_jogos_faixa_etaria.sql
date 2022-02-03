USE `bdsteam`;

SELECT `faixa_etaria`, count(faixa_etaria)
FROM `steam_dados`
WHERE `faixa_etaria` > 0
GROUP BY `faixa_etaria`; -- Quantidade de jogos da steam por faixa etária.