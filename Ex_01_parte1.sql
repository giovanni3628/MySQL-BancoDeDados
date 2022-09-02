CREATE DATABASE setor_rh;

USE  setor_rh;


CREATE TABLE tb_colaboradores(
id int auto_increment,
nome varchar(255),
idade int,
salario bigint,
setor varchar(255),
sexo varchar(255),
primary key (id)
);

INSERT INTO tb_colaboradores(nome, idade, salario, setor, sexo)
VALUES ("Daniela", "35", "5000", "RH", "Feminino");

INSERT INTO tb_colaboradores(nome, idade, salario, setor, sexo)
VALUES ("Daniel", "40", "1500", "produção", "Masculino");

INSERT INTO tb_colaboradores(nome, idade, salario, setor, sexo)
VALUES ("Matheus", "25", "3000", "ADM", "Masculino");

INSERT INTO tb_colaboradores(nome, idade, salario, setor, sexo)
VALUES ("José", "22", "1800", "tecnologia", "Masculino");

INSERT INTO tb_colaboradores(nome, idade, salario, setor, sexo)
VALUES ("Erika", "40", "8000", "financeiro", "Feminino");

SELECT * FROM tb_colaboradores;

SELECT * FROM tb_colaboradores WHERE salario >= 2000;
SELECT * FROM tb_colaboradores WHERE salario <= 2000;
