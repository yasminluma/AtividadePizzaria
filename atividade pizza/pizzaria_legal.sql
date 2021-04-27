-- COMANDOS DDL
CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categoria (
	id_categoria INT NOT NULL AUTO_INCREMENT,
    categoria VARCHAR(15) NOT NULL,
    PRIMARY KEY (id_categoria)
);

CREATE TABLE tb_pizza (
	id_pizza BIGINT(10) NOT NULL AUTO_INCREMENT, 
	sabores VARCHAR(45), 
	recheio_borda VARCHAR(45),
	adicional VARCHAR (45),
    fk_categoria INT,
    PRIMARY KEY (id_pizza),
	FOREIGN KEY (fk_categoria) REFERENCES tb_categoria(id_categoria)
);
-- ----------------------------------------------------------------

-- COMANDO DML
INSERT INTO db_pizzaria_legal.tb_categoria (categoria) VALUES ("SALGADA");
INSERT INTO db_pizzaria_legal.tb_categoria (categoria) VALUES ("DOCE");

INSERT INTO db_pizzaria_legal.tb_pizza (sabores, recheio_borda, adicional, fk_categoria) VALUES ("Baiana", "Catupiri", "Azeitonas", 1);
INSERT INTO db_pizzaria_legal.tb_pizza (sabores, recheio_borda, adicional, fk_categoria) VALUES ("Portuguesa", "Catupiri", "Queijo", 1);
INSERT INTO db_pizzaria_legal.tb_pizza (sabores, recheio_borda, adicional, fk_categoria) VALUES ("Romeu e Julieta", "Normal", "Julietas", 2);

SELECT * FROM tb_pizza;

SELECT tb_pizza.sabores, tb_pizza.recheio_borda, tb_pizza.adicional, tb_categoria.categoria
FROM tb_pizza
INNER JOIN tb_categoria
ON tb_pizza.fk_categoria = tb_categoria.id_categoria;

