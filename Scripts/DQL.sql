USE Projeto_RPG

--Selecionar todos personagens
SELECT * FROM Personagem

--Selecionar todas classes
SELECT * FROM CLASSE

--Selecionar apenas nome da classe
SELECT nomeClasse Classe FROM Classe 

--Selecionar todas habilidades
SELECT * FROM Habilidade

--Contagens de quantas habilidades estão cadastradas
SELECT COUNT (*) AS [Total de Habilidades] FROM HABILIDADE 

--ID'S Habilidades em ordem crescente
SELECT Tipo_de_Habilidade * Habilidade
ORDER BY Tipo_de_Habilidade

--Selecionar todos tipos de habilidade
