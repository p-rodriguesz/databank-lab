USE biblioteca_pessoal_1s2026;
SELECT
    l.id_livro,
    l.titulo,
    l.ano_publicacao,
    l.lido,
    a.nome AS autor,
    c.nome AS categoria
FROM livro l
INNER JOIN autor     a ON a.id_autor     = l.id_autor
INNER JOIN categoria c ON c.id_categoria = l.id_categoria
WHERE a.nome = 'J.K. Rowling'; 
SELECT
    l.id_livro,
    l.titulo,
    l.ano_publicacao,
    l.lido,
    a.nome AS autor,
    c.nome AS categoria
FROM livro l
INNER JOIN autor     a ON a.id_autor     = l.id_autor
INNER JOIN categoria c ON c.id_categoria = l.id_categoria
WHERE c.nome = 'Filosofia';
UPDATE categoria
SET nome = 'Censurado'
WHERE nome = 'Filosofia';
DELETE FROM livro
WHERE id_categoria = (
    SELECT id_categoria
    FROM categoria
    WHERE nome = 'Censurado'
);