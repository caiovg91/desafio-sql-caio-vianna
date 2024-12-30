 # criação de database
 
CREATE DATABASE Db_Teste;

use db_teste;

# 1. Construa o modelo de relacionamento com as categorias utilizadas em todos os campos do arquivo CSV (incluir imagem do modelo).

CREATE TABLE cliente (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome_cliente VARCHAR(100) NOT NULL
);

CREATE TABLE equipe (
    id_equipe INT PRIMARY KEY AUTO_INCREMENT,
    nome_equipe VARCHAR(50) NOT NULL
);

CREATE TABLE vendedor (
    id_vendedor INT PRIMARY KEY AUTO_INCREMENT,
    nome_vendedor VARCHAR(100) NOT NULL,
    id_equipe INT,
    FOREIGN KEY (id_equipe) REFERENCES equipe(id_equipe)
);

CREATE TABLE regional (
    id_regional INT PRIMARY KEY AUTO_INCREMENT,
    nome_regional VARCHAR(50) NOT NULL
);

CREATE TABLE tipo (
    id_tipo INT PRIMARY KEY AUTO_INCREMENT,
    nome_tipo VARCHAR(50) NOT NULL
);


CREATE TABLE categoria (
    id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    nome_categoria VARCHAR(50) NOT NULL
);

SELECT * FROM vendedor;

CREATE TABLE venda (
    id_venda VARCHAR(15) PRIMARY KEY,
    id_cliente int,
    id_vendedor int,
    id_regional int,
    id_tipo int,
    id_categoria int,
    data_venda date,
    valor float,
    duracao_contrato text,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
    FOREIGN KEY (id_vendedor) REFERENCES vendedor(id_vendedor),
    FOREIGN KEY (id_regional) REFERENCES regional(id_regional),
    FOREIGN KEY (id_tipo) REFERENCES tipo(id_tipo),
    FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria)
);






