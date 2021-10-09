CREATE DATABASE Projeto_RPG;
GO
USE Projeto_RPG;
SELECT * FROM Tipo_de_Habilidade;

CREATE TABLE Tipo_de_Habilidade(
tipoHabilidadeID INT PRIMARY KEY IDENTITY(1,1),
nomeTipoHabilidade varchar (30))
;

CREATE TABLE Classe(
classeID INT PRIMARY KEY IDENTITY(1,1),
nomeClasse varchar(30));

CREATE TABLE Habilidade(
habilidadeID INT PRIMARY KEY IDENTITY(1,1),
Tipo_de_Habilidade INT FOREIGN KEY REFERENCES Tipo_de_Habilidade,
nomeHabilidade varchar(30));

CREATE TABLE Classe_Habilidade (
classHabilidadeID INT PRIMARY KEY IDENTITY(1,1),
ClasseID INT FOREIGN KEY REFERENCES Classe (classeID),
HabilidadeID INT FOREIGN KEY REFERENCES Habilidade (habilidadeID));

CREATE TABLE Personagem(
personagemID INT PRIMARY KEY IDENTITY (1,1),
nome varchar (30),
vidaMax INT not null,
manaMax INT not null,
updateData smalldatetime,
createData smalldatetime,
classeID INT FOREIGN KEY REFERENCES Classe(classeID));