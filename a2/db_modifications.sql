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
FOREIGN KEY (id_usuario) REFERENCES users(id_usuario);
describe livro;









