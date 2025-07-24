-- 1
SELECT Nome, Ano FROM filmes;
-- 2
SELECT * FROM filmes ORDER BY(ano);
-- 3
SELECT * FROM filmes WHERE Nome = 'De Volta para o Futuro';
-- 4
SELECT * FROM filmes WHERE Ano = '1997'
-- 5
SELECT * FROM Filmes WHERE Ano > '2000'
-- 6
SELECT * FROM Filmes WHERE Duracao > '100' AND Duracao < '150' ORDER BY(duracao)
-- 7
SELECT ano, 
	COUNT(*) AS quantidade_filmes, 
	SUM(duracao) AS duracao_total
FROM
	Filmes
GROUP BY 
	ano
ORDER BY
	uracao_total DESC;
-- 8
SELECT * FROM Atores WHERE Genero = 'M'
-- 9
SELECT * FROM Atores WHERE Genero ='F' ORDER BY(primeiro_nome)
-- 10
SELECT 
    f.nome AS nome_filme,
    g.genero AS genero_filme
FROM 
    filmes f
JOIN 
    filmes_genero fg ON f.id = fg.id_filme
JOIN 
    generos g ON fg.id_genero = g.id
-- 11
SELECT 
    f.nome AS nome_filme,
    g.genero AS genero_filme
FROM 
    filmes f
JOIN 
    filmes_genero fg ON f.id = fg.id_filme
JOIN 
    generos g ON fg.id_genero = g.id
WHERE
	g.genero = 'Mistério'
-- 12
SELECT
	f.nome,
	a.primeiro_nome,
	a.ultimo_nome,
	ef.papel
FROM
	atores a
JOIN
	elenco_filme ef ON a.id = id_ator
JOIN
	filmes f ON f.id = ef.id_filme



