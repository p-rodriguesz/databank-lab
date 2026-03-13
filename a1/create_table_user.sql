USE biblioteca_pessoal_1s2026;
CREATE table Users (
id_usuario int auto_increment primary key,
username varchar (255) not null,
email varchar (255) unique,
data_cadastro date
);
