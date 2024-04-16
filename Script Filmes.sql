-- 1
SELECT Nome,
Ano 
FROM Filmes

--2
SELECT Nome,
Ano,
Duracao
FROM Filmes ORDER BY Ano

--3
SELECT Nome,
Ano,
Duracao
FROM Filmes WHERE Nome = 'De volta para o futuro'

--4
SELECT Nome,
Ano,
Duracao
FROM Filmes WHERE Ano = 1997

--5
SELECT Nome,
Ano,
Duracao
FROM Filmes WHERE Ano > 2000

--6
SELECT Nome,
Ano,
Duracao
FROM Filmes WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

--7
SELECT Ano, COUNT(*)Quantidade FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

--8
SELECT Id,
PrimeiroNome,
UltimoNome,
Genero FROM Atores WHERE Genero = 'M'

--9
SELECT Id,
PrimeiroNome,
UltimoNome,
Genero FROM Atores WHERE Genero = 'F'
ORDER BY PrimeiroNome

--10
SELECT F.Nome,GF.Genero 
FROM Filmes F INNER JOIN FilmesGenero G 
ON F.Id = G.IdFilme INNER JOIN Generos GF 
ON G.IdGenero = GF.Id

--11
SELECT F.Nome,GF.Genero 
FROM Filmes F INNER JOIN FilmesGenero G 
ON F.Id = G.IdFilme INNER JOIN Generos GF 
ON G.IdGenero = GF.Id WHERE GF.Genero = 'Mistério'

--12
SELECT F.Nome,
A.PrimeiroNome,
A.UltimoNome,
E.Papel 
FROM Filmes F INNER JOIN ElencoFilme E ON F.Id = E.IdFilme INNER JOIN Atores A 
ON A.Id = E.IdAtor