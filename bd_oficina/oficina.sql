CREATE DATABASE oficina;
use oficina;

CREATE TABLE Clientes (
    ClienteID INT PRIMARY KEY AUTO_INCREMENT,
    Fname varchar(10) NOT NULL,
    Minit char(3),
    Lname varchar(10),
    Telefone VARCHAR(15),
    Email VARCHAR(255),
    Endereco VARCHAR(255),
    CPF char(11) not null,
    constraint unique_cpf_client unique(CPF)
);

alter table Clientes auto_increment=1;

CREATE TABLE Carros (
    CarroID INT PRIMARY KEY AUTO_INCREMENT,
    Marca VARCHAR(50) NOT NULL,
    Modelo VARCHAR(50) NOT NULL,
    Ano INT,
    Placa VARCHAR(10) NOT NULL UNIQUE,
    ClienteID INT,
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)
);

alter table Carros auto_increment=1;

CREATE TABLE Servicos (
    ServicoID INT PRIMARY KEY AUTO_INCREMENT,
    Descricao VARCHAR(255) NOT NULL,
    Preco DECIMAL(10, 2) NOT NULL
);

CREATE TABLE Funcionarios (
    FuncionarioID INT PRIMARY KEY AUTO_INCREMENT,
    Fname varchar(10) NOT NULL,
    Minit char(3),
    Lname varchar(10),
    CPF char(11) not null,
    Cargo VARCHAR(50) NOT NULL,
    Salario DECIMAL(10, 2) NOT NULL
);

alter table Funcionarios auto_increment=1;

CREATE TABLE OrdensServico (
    OrdemID INT PRIMARY KEY AUTO_INCREMENT,
    ClienteID INT,
    CarroID INT,
    DataEntrada DATE NOT NULL,
    DataSaida DATE,
    FuncionarioID INT,
    FornecedorID INT,
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID),
    FOREIGN KEY (CarroID) REFERENCES Carros(CarroID),
    FOREIGN KEY (FuncionarioID) REFERENCES Funcionarios(FuncionarioID),
    FOREIGN KEY (FornecedorID) REFERENCES Fornecedores(FornecedorID)
);

alter table OrdensServico auto_increment=20230001;

CREATE TABLE DetalhesOrdemServico (
    DetalheID INT PRIMARY KEY AUTO_INCREMENT,
    OrdemID INT,
    ServicoID INT,
    Quantidade INT NOT NULL DEFAULT 1,
    PecaID INT,
    QuantidadePecas INT NOT NULL DEFAULT 1,
    FOREIGN KEY (OrdemID) REFERENCES OrdensServico(OrdemID),
    FOREIGN KEY (ServicoID) REFERENCES Servicos(ServicoID),
    FOREIGN KEY (PecaID) REFERENCES Pecas(PecaID)
);

alter table DetalhesOrdemServico auto_increment=1;

CREATE TABLE Pecas (
    PecaID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL,
    Fabricante VARCHAR(100),
    Preco DECIMAL(10, 2) NOT NULL
);

alter table Pecas auto_increment=1;

CREATE TABLE Fornecedores (
    FornecedorID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(255) NOT NULL,
    CNPJ CHAR(14) NOT NULL,
    Telefone VARCHAR(15),
    Email VARCHAR(255),
    Endereco VARCHAR(255),
    constraint unique_cnpj_fornecedor unique(CNPJ)
);

alter table Fornecedores auto_increment=1;

show tables;
