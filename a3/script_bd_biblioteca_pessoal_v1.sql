
/*
     CREATION QUERY OF DATABASE
     N' NAVIGATION QUERY OF DATABASE
     
     
*/
CREATE database biblioteca_pessoal_1s2026;
USE biblioteca_pessoal_1s2026;
SHOW TABLES;
SELECT * FROM livro;
SHOW TABLES;
SELECT * FROM users;
ALTER TABLE users ADD senha varchar (255);
SHOW TABLES;
select * from users;
alter table users modify column data_cadastro timestamp;
select * from users;
alter table users add data_atualizacao timestamp;
select * from users;
show tables;
select * from livro;
alter table livro drop column descricao;
select * from livro;
alter table livro add sinopse text;
alter table livro add lido boolean;
alter table livro add data_atualizacao timestamp;
select * from livro;
alter table livro rename column data_publicacao to ano_publicacao;
select * from livro;
alter table livro modify column ano_publicacao timestamp;
select * from livro;
alter table livro add data_cadastro timestamp;
select * from users;
alter table livro add column id_usuario int not null;
ALTER TABLE livro 
ADD CONSTRAINT fk_id_usuario 
FOREIGN KEY (id_usuario) REFERENCES users(id_usuario) ON DELETE CASCADE;
describe livro;
show tables;
select * from users;
select * from categoria;
ALTER TABLE livro 
ADD CONSTRAINT fk_id_categoria
FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria);
describe categoria;
describe livro;
alter table livro add column id_categoria int not null;
alter table livro add column id_autor int not null;
ALTER TABLE livro 
ADD CONSTRAINT fk_id_autor 
FOREIGN KEY (id_autor) REFERENCES autor(id_autor);
alter table livro add column id_editora int not null;
ALTER TABLE livro 
ADD CONSTRAINT fk_id_editora
FOREIGN KEY (id_editora) REFERENCES editora(id_editora);
describe livro;
create table autor ( 
id_autor int auto_increment primary key, 
nome varchar (255) not null unique, 
ano_nascimento year, ano_morte year, 
apresentacao text, 
data_cadastro timestamp not null default current_timestamp, 
data_atualizacao timestamp not null default current_timestamp
on update current_timestamp
);
create table categoria(
id_categoria int auto_increment primary key,
nome varchar (255) not null unique,
descricao text,
data_cadastro timestamp not null default current_timestamp,
data_atualizacao timestamp not null default current_timestamp on update current_timestamp
);
create table editora(
id_editora int auto_increment primary key,
nome varchar (255) not null unique,
cidade varchar (64),
estado varchar (64),
pais varchar (64),
data_cadastro timestamp not null default current_timestamp,
data_atualizacao timestamp not null default current_timestamp on update current_timestamp
);
CREATE table livro (
id_livro int auto_increment primary key,
titulo varchar (255) not null,
descricao varchar (255) not null,
data_publicacao year
);
CREATE table Users (
id_usuario int auto_increment primary key,
username varchar (255) not null,
email varchar (255) unique,
data_cadastro date
);



