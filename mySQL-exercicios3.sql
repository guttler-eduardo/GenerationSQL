CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes (
    id_classe bigint auto_increment primary key,
    nome_classe varchar(50),
    dificuldade double
);

CREATE TABLE tb_personagens (
    id_personagem bigint auto_increment primary key,
    nome_personagem varchar(100),
    vitalidade bigint,
    poder_atk bigint,
    poder_def bigint,
    classe_id bigint,
    foreign key(id_personagem) references tb_classes(id_classe)
);

INSERT tb_classes (nome_classe, dificuldade)
VALUES ("Cavaleiro(a)", 3.0);

INSERT tb_classes (nome_classe, dificuldade)
VALUES ("Feiticeiro(a)", 3.4);

INSERT tb_classes (nome_classe, dificuldade)
VALUES ("Arqueiro(a)", 3.2);

INSERT tb_classes (nome_classe, dificuldade)
VALUES ("Assassino(a)", 4.0);

INSERT tb_classes (nome_classe, dificuldade)
VALUES ("Ferreiro(a)", 4.8);

INSERT tb_classes (nome_classe, dificuldade)
VALUES ("Justiceiro(a)" , 4.4);

SELECT * FROM tb_classes;

INSERT tb_personagens (nome_personagem, vitalidade, poder_atk, poder_def, classe_id)
VALUES ("Jhin", 3000, 2500, 2000, 6);

INSERT tb_personagens (nome_personagem, vitalidade, poder_atk, poder_def, classe_id)
VALUES ("Ornn", 3250, 2700, 2300, 5);

INSERT tb_personagens (nome_personagem, vitalidade, poder_atk, poder_def, classe_id)
VALUES ("Katarina", 3750, 1700, 3000, 4);

INSERT tb_personagens (nome_personagem, vitalidade, poder_atk, poder_def, classe_id)
VALUES ("Ashe", 2500, 3000, 2000, 3);

INSERT tb_personagens (nome_personagem, vitalidade, poder_atk, poder_def, classe_id)
VALUES ("Xerath", 3000, 2500, 2000, 2);

INSERT tb_personagens (nome_personagem, vitalidade, poder_atk, poder_def, classe_id)
VALUES ("Xin Zhao", 5000, 2250, 3500, 1);

INSERT tb_personagens (nome_personagem, vitalidade, poder_atk, poder_def, classe_id)
VALUES ("Kled", 4000, 1500, 2000, 1);

INSERT tb_personagens (nome_personagem, vitalidade, poder_atk, poder_def, classe_id)
VALUES ("Varus", 4500, 2250, 2000, 3);

SELECT * FROM tb_personagens WHERE poder_atk > 2000;

SELECT * FROM tb_personagens WHERE poder_def >= 1000 AND poder_def <= 2000;

SELECT * FROM tb_personagens WHERE nome_personagem LIKE "%c%";

SELECT * FROM tb_personagens INNER JOIN tb_classes ON  tb_personagens.classe_id = 
tb_classes.id_classe;

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classe_id = 
tb_classes.id_classe WHERE id_classe = 6;

-- EXERCICIO 1 FIM / EXERCICIO 2 COMEÇO

CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal; 

CREATE TABLE tb_categorias(
    id_categoria bigint auto_increment primary key,
    nome varchar(50),
    score double
);

CREATE TABLE tb_pizzas(
    id_pizza bigint auto_increment primary key,
    sabor varchar(50),
    borda varchar(50),
    preco double,
    qtd_pedacos bigint,
    categoria_id bigint,
    foreign key(id_pizza) references tb_categorias(id_categoria)
);

INSERT tb_categorias (nome, score)
VALUES ("Vegetariana", 4.0);

INSERT tb_categorias (nome, score)
VALUES ("Doce", 2.5);

INSERT tb_categorias (nome, score)
VALUES ("Exótica", 3.0);

INSERT tb_categorias (nome, score)
VALUES ("Especial", 4.5);

INSERT tb_categorias (nome, score)
VALUES ("Simples", 3.5);

INSERT tb_pizzas (sabor, borda, preco, qtd_pedacos, categoria_id)
VALUES ("Rúcula", "Sem", 50.00, 8, 1);

INSERT tb_pizzas (sabor, borda, preco, qtd_pedacos, categoria_id)
VALUES ("Brigadeiro", "Chocolate", 60.00, 4, 2);

INSERT tb_pizzas (sabor, borda, preco, qtd_pedacos, categoria_id)
VALUES ("Abacaxi com Marmelada", "Cremosa", 55.00, 4, 3);

INSERT tb_pizzas (sabor, borda, preco, qtd_pedacos, categoria_id)
VALUES ("Quatro Queijos", "Catupiry", 40.00, 8, 4);

INSERT tb_pizzas (sabor, borda, preco, qtd_pedacos, categoria_id)
VALUES ("Mussarela", "Catupiry", 30.00, 8, 5);

INSERT tb_pizzas (sabor, borda, preco, qtd_pedacos, categoria_id)
VALUES ("Banana com Doce de Leite", "Chocolate Branco", 49.00, 4, 2);

INSERT tb_pizzas (sabor, borda, preco, qtd_pedacos, categoria_id)
VALUES ("Palmito", "Sem", 45.00, 8, 1);

INSERT tb_pizzas (sabor, borda, preco, qtd_pedacos, categoria_id)
VALUES ("Pepperoni", "Catupiry", 39.00, 8, 5);

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco >= 50.00 AND preco <= 100.00;

SELECT * FROM tb_pizzas WHERE sabor LIKE "%m%";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categoria_id = 
tb_categorias.id_categoria;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categoria_id = 
tb_categorias.id_categoria WHERE id_categoria = 1; 

-- EXERCICIO 2 FIM / EXERCICIO 3 COMEÇO

CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
    id_categoria bigint auto_increment primary key,
    nome_categoria varchar(50),
    avaliacao double
);

CREATE TABLE tb_produtos(
    cod_produto bigint auto_increment primary key,
    nome_produto varchar(50),
    tipo varchar(25),
    valor double,
    doses_diarias int,
    categoria_id bigint,
    foreign key(cod_produto) references tb_categorias(id_categoria)
);

INSERT tb_categorias (nome_categoria, avaliacao)
VALUES ("Comprimido", 3.5);

INSERT tb_categorias (nome_categoria, avaliacao)
VALUES ("Cápsula", 4.0);

INSERT tb_categorias (nome_categoria, avaliacao)
VALUES ("Antibiótico", 4.2);

INSERT tb_categorias (nome_categoria, avaliacao)
VALUES ("Pastilha", 3.0);

INSERT tb_categorias (nome_categoria, avaliacao)
VALUES ("Injetável", 2.5);

INSERT tb_produtos (nome_produto, tipo, valor, doses_diarias, categoria_id)
VALUES ("Palhasolver", "Referência", 15.00, 3, 1);

INSERT tb_produtos (nome_produto, tipo, valor, doses_diarias, categoria_id)
VALUES ("Planífero", "Fitoterápico", 51.00, 2, 2);

INSERT tb_produtos (nome_produto, tipo, valor, doses_diarias, categoria_id)
VALUES ("Vacina COVID", "Homeopático", 65.00, 1, 5);

INSERT tb_produtos (nome_produto, tipo, valor, doses_diarias, categoria_id)
VALUES ("Remedinho Gostoso pra Tosse", "Genérico", 4.50, 1, 3);

INSERT tb_produtos (nome_produto, tipo, valor, doses_diarias, categoria_id)
VALUES ("Petrilinha", "Homeopático", 25.00, 4, 4);

INSERT tb_produtos (nome_produto, tipo, valor, doses_diarias, categoria_id)
VALUES ("Imahguene", "Manipulado", 55.00, 1, 5);

INSERT tb_produtos (nome_produto, tipo, valor, doses_diarias, categoria_id)
VALUES ("Sketi", "Referência", 1.00, 10, 1);

INSERT tb_produtos (nome_produto, tipo, valor, doses_diarias, categoria_id)
VALUES ("Dramin", "Genérico", 45.00, 5, 3);

SELECT * FROM tb_produtos WHERE valor > 50.00;

SELECT * FROM tb_produtos WHERE valor >= 5.00 AND valor <= 60.00;

SELECT * FROM tb_produtos WHERE nome_produto LIKE "%c%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id =
tb_categorias.id_categoria;

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id =
tb_categorias.id_categoria WHERE id_categoria = 5;

-- EXERCICIO 3 FIM / EXERCICIO 4 COMEÇO

CREATE DATABASE db_cidade_dos_vegetais;
USE db_cidade_dos_vegetais;

CREATE TABLE tb_categorias(
    id_categoria bigint auto_increment primary key,
    nome_categoria varchar(50),
    avaliacao double
);

CREATE TABLE tb_produtos(
    cod_produto bigint auto_increment primary key,
    nome_produto varchar(100),
    valor double,
    qtd int,
    categoria_id bigint,
    foreign key(cod_produto) references tb_categorias(id_categoria)
);

INSERT tb_categorias (nome_categoria, avaliacao)
VALUES ("Hortaliça", 2.5);

INSERT tb_categorias (nome_categoria, avaliacao)
VALUES ("Frutas", 3.0);

INSERT tb_categorias (nome_categoria, avaliacao)
VALUES ("Grãos", 3.5);

INSERT tb_categorias (nome_categoria, avaliacao)
VALUES ("Legumes", 4.0);

INSERT tb_categorias (nome_categoria, avaliacao)
VALUES ("Conserva", 4.5);

INSERT tb_produtos(nome_produto, valor, qtd, categoria_id)
VALUES("Rúcula", 55.80, 25, 1);

INSERT tb_produtos(nome_produto, valor, qtd, categoria_id)
VALUES("Maça", 27.40, 20, 2);

INSERT tb_produtos(nome_produto, valor, qtd, categoria_id)
VALUES("Couve-flor", 60.55, 40, 4);

INSERT tb_produtos(nome_produto, valor, qtd, categoria_id)
VALUES("Ervilha(lata)", 30.87, 15, 5);

INSERT tb_produtos(nome_produto, valor, qtd, categoria_id)
VALUES("Feijão", 65.26, 5, 3);

INSERT tb_produtos(nome_produto, valor, qtd, categoria_id)
VALUES("Tomate", 65.26, 15, 1);

INSERT tb_produtos(nome_produto, valor, qtd, categoria_id)
VALUES("Palmito", 60.25, 5, 5);

INSERT tb_produtos(nome_produto, valor, qtd, categoria_id)
VALUES("Melancia", 70.99, 8, 2);

SELECT * FROM tb_produtos WHERE valor > 50.00;

SELECT * FROM tb_produtos WHERE valor >= 50.00 AND valor <= 150.00;

SELECT * FROM tb_produtos WHERE nome_produto LIKE "%c%";
 
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id =
tb_categorias.id_categoria;

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id =
tb_categorias.id_categoria WHERE id_categoria = 2;

-- EXERCICIO 4 FIM / EXERCICIO 5 COMEÇO

CREATE DATABASE db_construindo_vidas;
USE db_construindo_vidas;

CREATE TABLE tb_categorias(
    id_categoria bigint auto_increment primary key,
    nome_categoria varchar(50),
    cuidados varchar(255)
);

CREATE TABLE tb_produtos(
    cod_produto bigint auto_increment primary key,
    nome_produto varchar(50),
    valor double,
    qtd int,
    categoria_id bigint,
    foreign key(cod_produto) references tb_categorias(id_categoria)
);

INSERT tb_categorias (nome_categoria, cuidados)
VALUES ("Caixas D'água", "Contatar técnico para instalação");

INSERT tb_categorias (nome_categoria, cuidados)
VALUES ("Argamassa", "Deixar longe das crianças");

INSERT tb_categorias (nome_categoria, cuidados)
VALUES ("Calhas e rufos", "Contatar pedreiro para construção");

INSERT tb_categorias (nome_categoria, cuidados)
VALUES ("Protetores de Construção", "Determine qual o melhor para o trabalho");

INSERT tb_categorias (nome_categoria, cuidados)
VALUES ("Drywall", "Escolha a melhor cor para você");

INSERT tb_produtos (nome_produto, valor, qtd, categoria_id)
VALUES ("Caixa d'água Polietileno 1.000L Azul Fortlev", 150.00, 5, 1);

INSERT tb_produtos (nome_produto, valor, qtd, categoria_id)
VALUES ("Argamassa de Porcelamento", 65.00, 10, 2);

INSERT tb_produtos (nome_produto, valor, qtd, categoria_id)
VALUES ("Argamassa Massa Pronta", 71.00, 12, 2);

INSERT tb_produtos (nome_produto, valor, qtd, categoria_id)
VALUES ("Calha Moldura Galvanizada", 69.52, 17, 3);

INSERT tb_produtos (nome_produto, valor, qtd, categoria_id)
VALUES ("Calha Alumínio Marrom", 64.50, 16, 3);

INSERT tb_produtos (nome_produto, valor, qtd, categoria_id)
VALUES ("Chapa de Drywall Standard 1,80x1,20m Branca Knauf", 120.00, 3, 4);

INSERT tb_produtos (nome_produto, valor, qtd, categoria_id)
VALUES ("Chapa de Drywall Resistente ao Fogo", 130.00, 2, 4);

INSERT tb_produtos (nome_produto, valor, qtd, categoria_id)
VALUES ("Arame Recozido Trançado 1kg ArcelorMittal", 55.00, 20, 5);

SELECT * FROM tb_produtos WHERE valor > 100.00;

SELECT * FROM tb_produtos WHERE valor >= 70.00 AND valor <= 150.00;

SELECT * FROM tb_produtos WHERE nome_produto LIKE "%c%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON  tb_produtos.categoria_id = 
tb_categorias.id_categoria;

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON  tb_produtos.categoria_id = 
tb_categorias.id_categoria WHERE id_categoria = 5;

-- EXERCICIO 5 FIM / EXERCICIO 6 COMEÇO

CREATE DATABASE db_curso_da_minha_vida;
USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias(
    id_categoria bigint auto_increment primary key,
    nome_categoria varchar(50),
    taxa_retencao int
);

CREATE TABLE tb_cursos(
    cod_curso bigint auto_increment primary key,
    nome_curso varchar(50),
    preco double,
    vagas int,
    categoria_id bigint,
    foreign key(cod_curso) references tb_categorias(id_categoria)
);

-- 4.	Insira 5 registros na tabela tb_categorias.

INSERT tb_categorias (nome_categoria, taxa_retencao)
VALUES ("Administração", 80);

INSERT tb_categorias (nome_categoria, taxa_retencao)
VALUES ("Informática", 88);

INSERT tb_categorias (nome_categoria, taxa_retencao)
VALUES ("Mecânica", 75);

INSERT tb_categorias (nome_categoria, taxa_retencao)
VALUES ("Mecatrônica", 79);

INSERT tb_categorias (nome_categoria, taxa_retencao)
VALUES ("Arquitetura e Decoração", 90);

INSERT tb_cursos (nome_curso, preco, vagas, categoria_id)
VALUES ("Desenvolvimento JAVA", 780.50, 200, 2);

INSERT tb_cursos (nome_curso, preco, vagas, categoria_id)
VALUES ("ADM", 650.28, 300, 1);

INSERT tb_cursos (nome_curso, preco, vagas, categoria_id)
VALUES ("Conserto de Carros", 480.00, 50, 3);

INSERT tb_cursos (nome_curso, preco, vagas, categoria_id)
VALUES ("Construindo com Arduíno", 800.00, 45, 4);

INSERT tb_cursos (nome_curso, preco, vagas, categoria_id)
VALUES ("Desenvolvimento Python", 550, 150, 2);

INSERT tb_cursos (nome_curso, preco, vagas, categoria_id)
VALUES ("Desenvolvimento VSCode", 475.66, 200, 2);

INSERT tb_cursos (nome_curso, preco, vagas, categoria_id)
VALUES ("Aprendendo Tudo Sobre HTML5", 900.50, 230, 2);

INSERT tb_cursos (nome_curso, preco, vagas, categoria_id)
VALUES ("Faça Uma Estátua de si Mesmo", 1100.99, 10, 5);

SELECT * FROM tb_cursos WHERE preco > 500.00;

SELECT * FROM tb_cursos WHERE preco >= 600.00 AND preco <= 1000.00;

SELECT * FROM tb_cursos WHERE nome_curso LIKE "%J%";

SELECT * FROM tb_cursos INNER JOIN tb_categorias ON tb_cursos.categoria_id =
tb_categorias.id_categoria;

SELECT * FROM tb_cursos INNER JOIN tb_categorias ON tb_cursos.categoria_id =
tb_categorias.id_categoria WHERE id_categoria = 2;