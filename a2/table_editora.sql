use biblioteca_pessoal_1s2026;
create table editora(
id_editora int auto_increment primary key,
nome varchar (255) not null unique,
cidade varchar (64),
estado varchar (64),
pais varchar (64),
data_cadastro timestamp not null default current_timestamp,
data_atualizacao timestamp not null default current_timestamp on update current_timestamp
);
