USE biblioteca_pessoal_1s2026;
CREATE table livro (
id_livro int auto_increment primary key,
titulo varchar (255) not null,
descricao varchar (255) not null,
data_publicacao year
);