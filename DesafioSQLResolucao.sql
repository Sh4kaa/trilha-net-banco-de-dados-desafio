-- 1
SELECT Nome, Ano FROM Filmes

-- 2 
SELECT Nome, Ano, Duracao FROM Filmes
ORDER BY Ano

-- 3
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Nome = 'De Volta para o Futuro'

-- 4
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano = 1997

-- 5
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano > 2000

-- 6
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Duracao > 100 and Duracao < 150
ORDER BY Duracao

-- 7
SELECT Ano, COUNT(*) Quantidade FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

-- 8
SELECT * FROM Atores
WHERE Genero = 'M'

-- 9
SELECT * FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- 10
SELECT Filmes.Nome, Generos.Genero
FROM Filmes
INNER JOIN FilmesGenero ON Filmes.id = FilmesGenero.idFilme
INNER JOIN Generos ON FilmesGenero.idGenero = Generos.id;

-- 11
SELECT Nome, G.Genero FROM Filmes F INNER JOIN FilmesGenero FG
on F.Id = FG.IdFilme
INNER JOIN Generos G on FG.IdGenero = G.Id
WHERE Genero = 'Mistério'

-- 12
SELECT F.Nome, A.PrimeiroNome, A.UltimoNome, E.Papel
FROM Filmes F INNER JOIN ElencoFilme E ON F.Id = E.IdFilme
INNER JOIN Atores A ON A.Id = E.IdAtor