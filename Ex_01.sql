CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
id bigint auto_increment,
tipo varchar(255),
poder varchar(255),
primary key (id)
);

ALTER TABLE tb_classes    
MODIFY poder bigint;  

CREATE TABLE tb_personagens(
id bigint auto_increment,
nome varchar(255) not null,
sexo varchar(255) not null,
idade int not null,
classes_id bigint,
primary key (id),
foreign key (classes_id) references tb_classes(id)
);

INSERT INTO tb_classes (tipo, poder)
VALUES ("Héroi", "1000");

INSERT INTO tb_classes (tipo, poder)
VALUES ("Vilão", "2000");

INSERT INTO tb_classes (tipo, poder)
VALUES ("Héroi", "4000");

INSERT INTO tb_classes (tipo, poder)
VALUES ("Vilão", "3000");

INSERT INTO tb_classes (tipo, poder)
VALUES ("Héroi", "5000");

SELECT * from tb_classes;

INSERT INTO tb_personagens (nome, sexo, idade)
VALUES ("João", "Masculino", "20");

INSERT INTO tb_personagens (nome, sexo, idade)
VALUES ("Maria", "feminino", "22");

INSERT INTO tb_personagens (nome, sexo, idade)
VALUES ("José", "Masculino", "18");

INSERT INTO tb_personagens (nome, sexo, idade)
VALUES ("Jorge", "Masculino", "30");

INSERT INTO tb_personagens (nome, sexo, idade)
VALUES ("Joaquim", "Masculino", "25");

INSERT INTO tb_personagens (nome, sexo, idade)
VALUES ("Marcelo", "Masculino", "28");

INSERT INTO tb_personagens (nome, sexo, idade)
VALUES ("Ana", "feminino", "24");

INSERT INTO tb_personagens (nome, sexo, idade)
VALUES ("Erika", "feminino", "26");

INSERT INTO tb_personagens (nome, sexo, idade)
VALUES ("Joana", "feminino", "23");

SELECT * FROM tb_personagens;

SELECT * FROM tb_classes WHERE poder >= 2000;

SELECT * FROM tb_classes WHERE poder BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE NOME LIKE "%c%";

SELECT tipo, poder, tb_personagens.nome, tb_personagens.sexo, tb_personagens.idade 
FROM tb_classes INNER JOIN tb_personagens ON tb_classes.id = tb_personagens.classes_id
