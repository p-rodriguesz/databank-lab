USE biblioteca_pessoal_1s2026;
create table categoria(
id_categoria int auto_increment primary key,
nome varchar (255) not null,
descricao text,
data_cadastro timestamp,
data_atualizacao timestamp
);

