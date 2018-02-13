create table usuarios(
	id int not null auto_increment primary key,
    usuario varchar(30) not null,
    nome varchar(255),
    email varchar(40) not null,
    senha varchar(255) not null
);