SELECT
    Nome,
    Ano
FROM
    FILMES;

SELECT
    Nome,
    Ano
FROM
    FILMES
ORDER BY
    ANO;

SELECT
    Nome,
    Ano
FROM
    FILMES
WHERE
    Nome = 'De volta para o futuro';

SELECT
    Nome,
    Ano
FROM
    FILMES
WHERE
    Ano = 1997;

SELECT
    Nome,
    Ano
FROM
    FILMES
WHERE
    Ano > 2000;

SELECT
    Nome,
    Ano
FROM
    FILMES
WHERE
    Ano > 2000;

SELECT
    Nome,
    Ano,
    Duracao
FROM
    FILMES
WHERE
    Duracao > 100
    and Duracao < 150
order by
    Duracao;

SELECT
    Ano,
    count(Nome)
FROM
    FILMES
group by
    ano
order by
    max(Duracao) desc;

SELECT
    *
FROM
    Atores
WHERE
    Genero = 'M';

SELECT
    *
FROM
    Atores
WHERE
    Genero = 'F'
ORDER BY
    UltimoNome;

SELECT
    F.Nome,
    G.Genero
FROM
    FilmesGenero FG
    JOIN Filmes F ON F.Id = FG.IdFilme
    JOIN Generos G ON G.Id = FG.IdGenero;

SELECT
    F.Nome,
    G.Genero
FROM
    FilmesGenero FG
    JOIN Filmes F ON F.Id = FG.IdFilme
    JOIN Generos G ON G.Id = FG.IdGenero
WHERE
    Genero = 'Mistério';

SELECT
    F.Nome,
    A.PrimeiroNome,
    UltimoNome,
    E.Papel
FROM
    Filmes F
    JOIN ElencoFilme E ON E.IdFilme = F.Id
    JOIN Atores A ON A.Id = E.IdAtor;