USE biblioteca_pessoal_1s2026;
INSERT INTO users (username, email, senha) VALUES
('Ana Silva',     'ana@email.com',   '123'),
('Bruno Souza',   'bruno@email.com', '123'),
('Carla Mendes',  'carla@email.com', '123');
INSERT INTO categoria (nome, descricao) VALUES
('Ficção Científica', 'Livros com temas futuristas e científicos'),
('Fantasia',          'Mundos imaginários e mágicos'),
('Romance',           'Histórias centradas em relações humanas'),
('Clássicos',         'Obras consagradas da literatura'),
('Suspense',          'Narrativas de tensão e mistério'),
('Filosofia',         'Reflexões filosóficas');
INSERT INTO autor (nome, ano_nascimento, ano_morte) VALUES
('George Orwell',       1903, 1950),
('J.R.R. Tolkien',      1892, 1973),
('Jane Austen',         1775, 1817),
('Machado de Assis',    1839, 1908),
('Agatha Christie',     1890, 1976),
('Isaac Asimov',        1920, 1992),
('Fyodor Dostoevsky',   1821, 1881),
('J.K. Rowling',        1965, NULL),
('Stephen King',        1947, NULL),
('Aldous Huxley',       1894, 1963);
INSERT INTO editora (nome, cidade, estado, pais) VALUES
('Penguin Books',         'Londres',          NULL, 'Reino Unido'),
('HarperCollins',         'Nova York',        'NY', 'EUA'),
('Companhia das Letras',  'São Paulo',        'SP', 'Brasil'),
('Editora Record',        'Rio de Janeiro',   'RJ', 'Brasil'),
('Rocco',                 'Rio de Janeiro',   'RJ', 'Brasil');
INSERT INTO livro (id_usuario, id_autor, id_editora, id_categoria, titulo, ano_publicacao, lido) VALUES
(1, 1, 1, 4, '1984',                              '1949-01-01', 1),
(1, 1, 1, 1, 'Animal Farm',                       '1945-01-01', 1),
(1, 2, 1, 2, 'The Hobbit',                        '1937-01-01', 1),
(1, 2, 1, 2, 'The Lord of the Rings',             '1954-01-01', 0),
(1, 3, 1, 3, 'Pride and Prejudice',               '1813-01-01', 1),
(1, 3, 1, 3, 'Sense and Sensibility',             '1811-01-01', 0),
(1, 4, 3, 4, 'Dom Casmurro',                      '1899-01-01', 1),
(1, 4, 3, 4, 'Memórias Póstumas de Brás Cubas',   '1881-01-01', 0),
(1, 5, 2, 5, 'Murder on the Orient Express',      '1934-01-01', 1),
(1, 5, 2, 5, 'And Then There Were None',          '1939-01-01', 0),
(1, 6, 2, 1, 'Foundation',                        '1951-01-01', 1),
(1, 6, 2, 1, 'I, Robot',                          '1950-01-01', 0),
(1, 7, 1, 6, 'Crime and Punishment',              '1866-01-01', 1),
(1, 7, 1, 6, 'The Brothers Karamazov',            '1880-01-01', 0);
INSERT INTO livro (id_usuario, id_autor, id_editora, id_categoria, titulo, ano_publicacao, lido) VALUES
(2, 8, 5, 2, 'Harry Potter and the Sorcerer''s Stone',    '1997-01-01', 1),
(2, 8, 5, 2, 'Harry Potter and the Chamber of Secrets',   '1998-01-01', 1),
(2, 8, 5, 2, 'Harry Potter and the Prisoner of Azkaban',  '1999-01-01', 0),
(2, 9, 2, 5, 'The Shining',                               '1977-01-01', 1),
(2, 9, 2, 5, 'It',                                        '1986-01-01', 0),
(2, 9, 2, 5, 'Misery',                                    '1987-01-01', 1),
(2,10, 1, 1, 'Brave New World',                           '1932-01-01', 1),
(2,10, 1, 1, 'Island',                                    '1962-01-01', 0),
(2, 1, 1, 1, 'Homage to Catalonia',                       '1938-01-01', 0),
(2, 6, 2, 1, 'The Caves of Steel',                        '1953-01-01', 1),
(2, 6, 2, 1, 'The Naked Sun',                             '1957-01-01', 0),
(2, 5, 2, 5, 'Death on the Nile',                         '1937-01-01', 1),
(2, 3, 1, 3, 'Emma',                                      '1815-01-01', 0),
(2, 4, 3, 4, 'Quincas Borba',                             '1891-01-01', 1);
INSERT INTO livro (id_usuario, id_autor, id_editora, id_categoria, titulo, ano_publicacao, lido) VALUES
(3, 7, 1, 6, 'Notes from Underground',                        '1864-01-01', 1),
(3, 7, 1, 6, 'The Idiot',                                     '1869-01-01', 0),
(3, 2, 1, 2, 'Silmarillion',                                  '1977-01-01', 0),
(3, 2, 1, 2, 'Unfinished Tales',                              '1980-01-01', 0),
(3, 8, 5, 2, 'Harry Potter and the Goblet of Fire',           '2000-01-01', 1),
(3, 8, 5, 2, 'Harry Potter and the Order of the Phoenix',     '2003-01-01', 0),
(3, 9, 2, 5, 'Carrie',                                        '1974-01-01', 1),
(3, 9, 2, 5, 'Pet Sematary',                                  '1983-01-01', 0),
(3,10, 1, 1, 'Doors of Perception',                           '1954-01-01', 1),
(3, 6, 2, 1, 'Prelude to Foundation',                         '1988-01-01', 0),
(3, 6, 2, 1, 'Forward the Foundation',                        '1993-01-01', 0),
(3, 5, 2, 5, 'The ABC Murders',                               '1936-01-01', 1),
(3, 4, 3, 4, 'Helena',                                        '1876-01-01', 0),
(3, 3, 1, 3, 'Mansfield Park',                                '1814-01-01', 1);
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