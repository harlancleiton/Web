create table tweets(
	id int not null auto_increment primary key,
    tweet varchar(140) not null,
    id_usuario int not null,
    foreign key (id_usuario) references usuarios(id)
);