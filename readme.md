# Projeto consulta BD STEAM (em construção)

Projeto de conclusão de módulo do curso de Desenvolvedor Web Full-Stack da Resilia Educação.

# Objetivos

- [x] Consolidar os conhecimentos adquiridos durante o módulo;

- [x] Comprovar a nossa capacidade de modelar um banco de dados relacional usando o MySQL;

- [x] Responder perguntas diversas através de consultas ao banco de dados usando SQL como linguagem;

- [x] Criar um dashboard que mostre os resultados das consultas;

- [x] Organizar o trabalho de forma assertiva usando a ferramenta de gestão de projetos ágeis SCRUM;

- [x] Fazer uso dos conhecimentos adquiridos através das aulas de SOFT SKILLS como inteligência emocional, trabalho em equipe, resolução de problemas, gestão de tempo e adaptabilidade.

# Tecnologias utilizadas

<div style="display: inline_block">
   <img  src="./imagens/SQL.png" height="50" width="70">
   <img  src="https://raw.githubusercontent.com/devicons/devicon/2ae2a900d2f041da66e950e4d48052658d850630/icons/mysql/mysql-plain-wordmark.svg" height="50" width="70">
   <img  src="./imagens/PowerBI.png" height="50" width="70">
</div>

# Comandos para criação do banco de dados Steam

*Criação do banco*
```
CREATE DATABASE `bdsteam`;
```

*Criação da tabela steam_dados*
```
CREATE TABLE `steam_dados` (
	id INT PRIMARY KEY NOT NULL,
   nome TEXT,
   data_lancamento DATE,
   desenvolvedor VARCHAR(100),
   plataformas VARCHAR(100),
   faixa_etaria INT,
   genero VARCHAR(50),
   conquistas INT,
   avaliacoes_positivas BIGINT,
   avaliacoes_negativas BIGINT,
   tempo_medio_de_jogo BIGINT,
   proprietarios VARCHAR(100),
   preco DOUBLE
);
```

*Criação da tabela steam_media*
```
CREATE TABLE `steam_media` (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
   id_steam_dados INT,
   filmes VARCHAR(1000),
   
   FOREIGN KEY (id_steam_dados) REFERENCES steam_dados(id)
);
```

*Criação da tabela steam_suporte*
```
CREATE TABLE `steam_suporte` (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    id_steam_dados INT,
    suporte_website VARCHAR(300),
    suporte_url VARCHAR(300),
    suporte_email VARCHAR(300)
);

ALTER TABLE steam_suporte ADD FOREIGN KEY(id_steam_dados) REFERENCES steam_dados(id);
```

*Fonte de dados utilizado nas tabelas*
```
steam_dados: "./fonte_de_dados/steam.csv"
steam_media: "./fonte_de_dados/steam_media_data.csv"
steam_suporte: "./fonte_de_dados/steam_support_info.csv"
```

# Imagens do banco de dados

**Tabela steam_dados**

SELECT * FROM `steam_dados`;

![Tabela steam_dados](./imagens/tabela_steam_dados.PNG)

**Tabela steam_media**

SELECT * FROM `steam_media` ORDER BY `filmes` DESC;

![Tabela steam_media](./imagens/tabela_steam_media.PNG)

**Tabela steam_suporte**

SELECT * FROM `steam_suporte` ORDER BY `suporte_website` DESC;

![Tabela steam_suporte](./imagens/tabela_steam_suporte.PNG)

# Dashboards criados

**Quais os maiores desenvolvedores de jogos da Steam**

![Dashboard1](./imagens/grafico_maiores_desenvolvedores_jogos.PNG)

**Quais as plataformas que mais possuem jogos**

![Dashboard1](./imagens/grafico_qtd_jogos_por_plataforma.PNG)




