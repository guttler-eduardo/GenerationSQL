CREATE DATABASE db_rh_empresa;

USE db_rh_empresa;

CREATE TABLE tb_colaboradores (
    ID BIGINT AUTO_INCREMENT,
    Nome VARCHAR(255),
    Idade INT,
    Setor VARCHAR(255),
    Cargo VARCHAR(255),
    Salario INT,
    PRIMARY KEY (id)
);

INSERT INTO tb_colaboradores (Nome, Idade, Setor, Cargo, Salario)
VALUES("João da Silva Nunes", 21, "Jurídico", "Estagiário(a)", 1100);

INSERT INTO tb_colaboradores (Nome, Idade, Setor, Cargo, Salario)
VALUES("Maria Santos Costa", 28, "Financeiro", "Contador(a)", 3100);

INSERT INTO tb_colaboradores (Nome, Idade, Setor, Cargo, Salario)
VALUES("Bruna Fernandes Oliveira", 25, "Comercial", "Consultor(a) de Vendas", 1900);

INSERT INTO tb_colaboradores (Nome, Idade, Setor, Cargo, Salario)
VALUES("Paulo Rodrigues Souza", 30, "Operações", "Supervisor de Operações", 2100);

INSERT INTO tb_colaboradores (Nome, Idade, Setor, Cargo, Salario)
VALUES("Marcela Andrade Torres", 34, "Recursos Humanos", "Recrutador(a)", 2500);

SELECT * FROM tb_colaboradores WHERE Salario > 2000;

SELECT * FROM tb_colaboradores WHERE Salario < 2000;

UPDATE tb_colaboradores SET Salario = 2400 WHERE id = 3;

SELECT * FROM tb_colaboradores;

-- EXERCÍCIO 1 FIM / EXERCÍCIO 2 COMEÇO

CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_loja (
	ID BIGINT AUTO_INCREMENT,
    Produto VARCHAR(255),
    Categoria VARCHAR(255),
    Marca VARCHAR(255),
    QtdEstoque INT,
    Preco INT,
	PRIMARY KEY (ID)
);

INSERT INTO tb_loja (Produto, Categoria, Marca, QtdEstoque, Preco)
VALUES ("Placa de Video RTX 3060TI", "Harware", "Asus", 100, 4700);

INSERT INTO tb_loja (Produto, Categoria, Marca, QtdEstoque, Preco)
VALUES ("Processador i7 12700k", "Hardware", "Intel", 227, 3400);

INSERT INTO tb_loja (Produto, Categoria, Marca, QtdEstoque, Preco)
VALUES ("Memória RAM Vengeange 8GB", "Hardware", "Corsair", 159, 270);

INSERT INTO tb_loja (Produto, Categoria, Marca, QtdEstoque, Preco)
VALUES ("Headset Bluetooth 510BT", "Periféricos", "JBL", 357, 230);

INSERT INTO tb_loja (Produto, Categoria, Marca, QtdEstoque, Preco)
VALUES ("Console Playstation 5 825GB", "Games", "Sony", 43, 5600);

INSERT INTO tb_loja (Produto, Categoria, Marca, QtdEstoque, Preco)
VALUES ("SmartTV LED 43' Full HD", "TV", "AOC", 78, 2600);

INSERT INTO tb_loja (Produto, Categoria, Marca, QtdEstoque, Preco)
VALUES ("Moto G22 128GB", "Celular & Smartphone", "Motorola", 115, 1530);

INSERT INTO tb_loja (Produto, Categoria, Marca, QtdEstoque, Preco)
VALUES ("Redmi Note 11S 128GB", "Celular & Smartphone", "Xiaomi", 99, 2100);

SELECT * FROM tb_loja WHERE preco < 500;

SELECT * FROM tb_loja WHERE preco > 500;

UPDATE tb_loja SET QtdEstoque = 0 WHERE ID = 8;

SELECT * FROM tb_loja;

-- EXERCÍCIO 2 FIM / EXERCÍCIO 3 COMEÇO

CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_alunos (
	ID BIGINT AUTO_INCREMENT,
	Nome VARCHAR(255),
    Curso VARCHAR(255),
    Semestre INT,
    Turno VARCHAR(255),
    Nota DECIMAL,
    PRIMARY KEY (ID)
);

INSERT INTO tb_alunos (Nome, Curso, Semestre, Turno, Nota)
VALUES ("João da Silva Nunes", "Ensino Médio", 6, "Manhã", 9.4);

INSERT INTO tb_alunos (Nome, Curso, Semestre, Turno, Nota)
VALUES ("Maria Santos Costa", "Ensino Médio", 5, "Manhã", 7.8);

INSERT INTO tb_alunos (Nome, Curso, Semestre, Turno, Nota)
VALUES ("Bruna Fernandes Oliveira", "Ensino Médio", 1, "Manhã", 5.4);

INSERT INTO tb_alunos (Nome, Curso, Semestre, Turno, Nota)
VALUES ("Paulo Rodrigues Souza", "Ensino Médio", 3, "Manhã", 6.5);

INSERT INTO tb_alunos (Nome, Curso, Semestre, Turno, Nota)
VALUES ("Marcela Andrade Torres", "Administração", 2, "Noite", 8.0);

INSERT INTO tb_alunos (Nome, Curso, Semestre, Turno, Nota)
VALUES ("Ricardo Augusto Borges", "Comunicação Visual", 2, "Tarde", 7.7);

INSERT INTO tb_alunos (Nome, Curso, Semestre, Turno, Nota)
VALUES ("Patricia Amaral Prado", "Eletrônica", 1, "Tarde", 8.9);

INSERT INTO tb_alunos (Nome, Curso, Semestre, Turno, Nota)
VALUES ("Leticia Lopes Marques", "Informática", 4, "Noite", 9.8);

SELECT * FROM tb_alunos WHERE Nota < 7.0;

SELECT * FROM tb_alunos WHERE Nota > 7.0;

UPDATE tb_alunos SET Nota = 6.5 WHERE ID = 3;

SELECT * FROM tb_alunos;

-- EXERCÍCIO 3 FIM