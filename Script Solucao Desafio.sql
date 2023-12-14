--1� Buscar o nome e ano dos filmes
SELECT
	Nome,
	Ano
	FROM Filmes

--2� Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT
	Nome,
	Ano
FROM Filmes
ORDER BY Ano ASC

--3� Buscar pelo filme "De Volta Para O Futuro", trazendo o nome, ano e a dura��o
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Nome = 'De Volta Para O Futuro'

--4� Buscar os filmes lan�ados em 1997
SELECT *
FROM Filmes
WHERE Ano = 1997

--5� Buscar os filmes lan�ados ap�s o ano 2000
SELECT *
FROM Filmes
WHERE Ano > 2000

--6� Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT *
FROM Filmes
WHERE Duracao > 100 AND Duracao	< 150
ORDER BY Duracao ASC

--7� Buscar a quantidade de filmes lan�adas no ano, agrupando por ano, ordenando pela quantidade em ordem decrescente
SELECT
	Ano,
	COUNT(*) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

--8� Buscar os Atores do g�nero masculino, retornando o PrimeiroNome, UltimoNome
SELECT
	PrimeiroNome,
	UltimoNome
FROM ATORES
WHERE Genero = 'M'

--9� Buscar os Atores do g�nero femenino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT
	PrimeiroNome,
	UltimoNome
FROM ATORES
WHERE Genero = 'F'
ORDER BY PrimeiroNome

--10� Buscar o nome do filme e o g�nero
SELECT
	Nome,
	Genero
FROM Filmes F
INNER JOIN Generos G ON F.Id = G.Id
INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme

--11� Buscar o nome do filme e o g�nero do tipo "Mist�rio"
SELECT
	F.Nome,
	G.Genero
FROM FilmesGenero FG 
INNER JOIN Generos G ON FG.IdGenero = G.Id
INNER JOIN Filmes F ON FG.IdFilme = F.Id
WHERE G.Genero = 'Mist�rio'

--12� Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT
	F.Nome,
	A.PrimeiroNome,
	A.UltimoNome,
	P.Papel
FROM ElencoFilme P
INNER JOIN Filmes F ON P.IdFilme = F.Id
INNER JOIN Atores A ON P.IdAtor = A.Id