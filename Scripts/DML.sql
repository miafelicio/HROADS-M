set IDENTITY_INSERT Tipo_de_Habilidade ON;
USE Projeto_RPG;s

INSERT INTO Tipo_de_Habilidade (nomeTipoHabilidade)
VALUES ('Ataque'),('Defesa'),('Cura'),('Magia');

SELECT * FROM Tipo_de_Habilidade;

INSERT INTO Classe(nomeClasse)
VALUES ('Bárbaro'),('Cruzado'),('Caçadora de demônios'),('Monge'),('Necromante'),('Feiticeiro'),('Arcanista');

SELECT * FROM Classe;

INSERT INTO Habilidade(Tipo_de_Habilidade, nomeHabilidade)
VALUES (1, 'Lança Mortal'), (2, 'Escudo Supremo'), (3, 'Recuperar Vida');


INSERT INTO Classe_Habilidade(ClasseID, HabilidadeID)
VALUES (1,1),(1,2),(2,2),(3,1),(4,2),(4,3),(6,3);

INSERT INTO Personagem(nome, classeID, vidaMax, manaMax, updateData, createData)
VALUES ('Fer8', 7, 75, 60, 10/08/2021, 18/03/2018),
		('DeuBug', 1, 100, 80, 10/08/2021, 18/01/2019),
		('BitBug', 4, 70, 100, 10/08/2021,	17/03/2016)

		SELECT * FROM Personagem

UPDATE Personagem
SET classeID = 4
WHERE nome = 'BitBug'

UPDATE Personagem
SET nome = 'Fer7'
WHERE personagemID = 7;
GO

UPDATE Classe_Habilidade
SET nomeClasse = 'Necromancer'
WHERE ClasseID = 5;
GO