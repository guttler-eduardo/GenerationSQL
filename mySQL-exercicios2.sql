CREATE DATABASE db_quitanda;

USE db_quitanda;

CREATE TABLE tb_mercadorias (
    ID_Produto bigint auto_increment primary key,
    Produto varchar(255),
    Qtd_Estoque int,
    Setor varchar(255),
	Preco decimal,
    ID_Categoria bigint,
    foreign key (ID_Produto) references tb_categorias(ID_Categoria)
);

CREATE TABLE tb_categorias (
    ID_Categoria bigint auto_increment primary key,
    Categoria varchar(255)
);

INSERT INTO tb_categorias (Categoria)
VALUES("Fruta");

INSERT INTO tb_categorias (Categoria)
VALUES("Fruta");

INSERT INTO tb_categorias (Categoria)
VALUES("Verdura");

INSERT INTO tb_categorias (Categoria)
VALUES("Verdura");

INSERT INTO tb_categorias (Categoria)
VALUES("Legume");

--

INSERT INTO tb_mercadorias (Produto, Qtd_Estoque, Setor, Preco, ID_Categoria)
VALUES("Maçã", 200, 1, 4.5, 1);

INSERT INTO tb_mercadorias (Produto, Qtd_Estoque, Setor, Preco, ID_Categoria)
VALUES("Banana", 200, 1, 6.8, 2);

INSERT INTO tb_mercadorias (Produto, Qtd_Estoque, Setor, Preco, ID_Categoria)
VALUES("Alface", 150, 2, 2.5, 3);

INSERT INTO tb_mercadorias (Produto, Qtd_Estoque, Setor, Preco, ID_Categoria)
VALUES("Couve", 150, 2, 5.2, 4);

INSERT INTO tb_mercadorias (Produto, Qtd_Estoque, Setor, Preco, ID_Categoria)
VALUES("Batata", 300, 3, 7.9, 5);

SELECT * FROM tb_mercadorias;

SELECT * FROM tb_categorias;

SELECT * FROM tb_categorias INNER JOIN tb_mercadorias ON tb_categorias.ID_Categoria = 
tb_mercadorias.ID_Categoria WHERE tb_mercadorias.valor > 50.00;

SELECT * FROM tb_mercadorias WHERE Produto LIKE "%a%";

UPDATE tb_mercadorias SET Produto = "Laranja" WHERE ID_Produto = 1;