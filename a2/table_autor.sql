create table autor ( 
id_autor int auto_increment primary key, 
nome varchar (255) not null unique, 
ano_nascimento year, ano_morte year, 
apresentacao text, 
data_cadastro timestamp not null default current_timestamp, 
data_atualizacao timestamp not null default current_timestamp
on update current_timestamp
);

