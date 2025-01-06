create database aulas;
use aulas;

CREATE TABLE Produto (
    cod_prod int PRIMARY KEY,
    valor_custo float,
    valor_venda float,
    nome_prod varchar(30)
);

CREATE TABLE Pessoa (
    cpf int PRIMARY KEY,
    ano_nasc int,
    nome_pessoa varchar(80)
);

CREATE TABLE Cliente (
    cod_cli int,
    fk_cpf int,
    PRIMARY KEY (cod_cli),
	FOREIGN KEY (fk_cpf) REFERENCES Pessoa (cpf)
);

CREATE TABLE Vendedor (
    cod_vendedor int,
    fk_cpf int,
    PRIMARY KEY (cod_vendedor),
    FOREIGN KEY (fk_cpf) REFERENCES Pessoa (cpf)
);

CREATE TABLE Hist_Vendas (
    cod_venda int PRIMARY KEY,
    fk_cod_prod int,
    fk_cod_vendedor int,
    fk_cod_cli int,
    ano_venda int,
	FOREIGN KEY (fk_cod_prod) REFERENCES Produto (cod_prod),
    FOREIGN KEY (fk_cod_cli) REFERENCES Cliente (cod_cli),
    FOREIGN KEY (fk_cod_vendedor) REFERENCES Vendedor (cod_vendedor)
);
