USE biblioteca_pessoal_1s2026;
CREATE table Users (
id_usuario int auto_increment primary key,
username varchar (255) not null,
email varchar (255) unique,
data_cadastro date
);
CREATE table livro (
id_livro int auto_increment primary key,
titulo varchar (255) not null,
descricao varchar (255) not null,
data_publicacao year
);

