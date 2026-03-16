use biblioteca_pessoal_1s2026;
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
alter table livro add column id_usuario int not null;
ALTER TABLE livro 
ADD CONSTRAINT fk_id_usuario 
FOREIGN KEY (id_usuario) REFERENCES users(id_usuario);
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