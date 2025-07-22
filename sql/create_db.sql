CREATE DATABASE IF NOT EXISTS comercial;

USE comercial;

CREATE TABLE IF NOT EXISTS lojas (
    Id_loja INT NOT NULL,
    Tipo_Loja VARCHAR(50),
    Gerente VARCHAR(50),
    Cidade VARCHAR(50),
    Pais VARCHAR(50),
    Continente VARCHAR(50),
    PRIMARY KEY(Id_loja)
);

CREATE TABLE IF NOT EXISTS produtos (
    Id_produto INT NOT NULL,
    Nome VARCHAR(100),
    Categoria VARCHAR(50),
    Marca VARCHAR(100),
    Preco_unit FLOAT,
    Custo_unit FLOAT,
    PRIMARY KEY(Id_produto)
);

CREATE TABLE IF NOT EXISTS clientes (
    Id_cliente INT NOT NULL,
    Nome VARCHAR(100),
    Genero VARCHAR(50),
    Data_nascimento DATE,
    Idade INT,
    Faixa_etaria VARCHAR(50),
    PRIMARY KEY(Id_cliente)
);

CREATE TABLE IF NOT EXISTS vendas (
    Id_venda INT NOT NULL AUTO_INCREMENT,
    Data_venda DATE, 
    Id_loja INT NOT NULL,
    Id_produto INT NOT NULL,
    Id_cliente INT NOT NULL,
    Qtd_vendida INT,
    Qtd_devolvida INT,
    Preco_unit FLOAT,
    Valor_total FLOAT,
    PRIMARY KEY(Id_venda),
    FOREIGN KEY (Id_loja) REFERENCES lojas(Id_loja),
    FOREIGN KEY (Id_produto) REFERENCES produtos(Id_produto),
    FOREIGN KEY (Id_cliente) REFERENCES clientes(Id_cliente)
);