USE biblioteca_pessoal_1s2026;
create table categoria(
id_categoria int auto_increment primary key,
nome varchar (255) not null unique,
descricao text,
data_cadastro timestamp not null default current_timestamp,
data_atualizacao timestamp not null default current_timestamp on update current_timestamp
);





