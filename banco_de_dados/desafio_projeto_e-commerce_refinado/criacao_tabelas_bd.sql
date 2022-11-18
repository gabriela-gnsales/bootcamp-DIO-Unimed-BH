-- Criando Banco de Dados para o cenário de E-commerce com caracteres especiais (acentuação)
CREATE DATABASE E_Commerce
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;

-- Visualizando todos os BDs existentes
SHOW DATABASES;

-- Acessando o BD
USE E_Commerce;

-- Criando tabelas
CREATE TABLE IF NOT EXISTS Endereço (
		idEndereço INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
		cep CHAR(8) NOT NULL,
		logradouro VARCHAR(45) NOT NULL,
        número INT NOT NULL,
        complemento VARCHAR(45) NOT NULL,
        bairro VARCHAR(45) NOT NULL,
        cidade VARCHAR(45) NOT NULL,
        estado CHAR(2) NOT NULL
) DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS ClientePF (
		idClientePF INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
		nome VARCHAR(45) NOT NULL,
		cpf CHAR(11) NOT NULL,
		dataNascimento DATE NOT NULL,
		telefone VARCHAR(15) NOT NULL,
		email VARCHAR(45) NOT NULL,
        CONSTRAINT uniqueCpfClientePF UNIQUE (cpf)
) DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS ClientePJ (
		idClientePF INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
		razãoSocial VARCHAR(45) NOT NULL,
		cnpj CHAR(14) NOT NULL,
		telefone VARCHAR(15) NOT NULL,
		email VARCHAR(45) NOT NULL,
        CONSTRAINT uniqueCnpjClientePJ UNIQUE (cnpj)
) DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS Pedido (
		idPedido INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        statusPedido ENUM('Em andamento', 'Processando', 'Enviado', 'Entregue') NOT NULL,
        preçoTotalPedido DECIMAL(10,2) NOT NULL,
        dataPedido DATE NOT NULL
) DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS Produto (
		idProduto INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        categoria VARCHAR(45) NOT NULL,
        preçoProduto DECIMAL(10,2) NOT NULL,
        descrição TEXT
) DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS Estoque (
		idEstoque INT NOT NULL AUTO_INCREMENT PRIMARY KEY
) DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS Vendedor (
		idVendedor INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        razãoSocial VARCHAR(45) NOT NULL,
		cnpj CHAR(14) NOT NULL,
		telefone VARCHAR(15) NOT NULL,
		email VARCHAR(45) NOT NULL,
        CONSTRAINT uniqueCnpjVendedor UNIQUE (cnpj)
) DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS Fornecedor (
		idFornecedor INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
		razãoSocial VARCHAR(45) NOT NULL,
		cnpj CHAR(14) NOT NULL,
		telefone VARCHAR(15) NOT NULL,
		email VARCHAR(45) NOT NULL,
        CONSTRAINT uniqueCnpjFornecedor UNIQUE (cnpj)
) DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS Pagamento (
		idPagamento INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        formaPagamento ENUM('Pix', 'Cartão de crédito', 'Boleto') NOT NULL,
        númeroNotaFiscal VARCHAR(9)
) DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS Pix (
		idPix INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        chavePix VARCHAR(45) NOT NULL,
        valor DECIMAL(10,2) NOT NULL,
        dataPagamentoEfetuado DATE NOT NULL
) DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS Boleto (
		idBoleto INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        códigoBarra VARCHAR(45) NOT NULL,
        valor DECIMAL(10,2) NOT NULL,
        dataPagamentoEfetuado DATE NOT NULL,
        dataVencimentoBoleto DATE NOT NULL
) DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS Cartão (
		idCartão INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        nomeCartão VARCHAR(45) NOT NULL,
        númeroCartão VARCHAR(9) NOT NULL,
        validadeCartão CHAR(6) NOT NULL,
        númeroParcelas INT NOT NULL,
        valorParcela DECIMAL(10,2) NOT NULL,
        dataPagamentoEfetuado DATE NOT NULL
) DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS Entrega (
		idEntrega INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        statusEntrega ENUM('Em andamento', 'Finalizada') NOT NULL,
        códigoRastreio VARCHAR(45) NOT NULL
) DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS Frete (
		idFrete INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        preçoKM DECIMAL(10,2) NOT NULL,
        distânciaKM FLOAT NOT NULL,
        preçoFrete DECIMAL(10,2) NOT NULL DEFAULT 0
) DEFAULT CHARSET=utf8mb4;

-- Visualizando tabelas
describe ClientePF;
describe ClientePJ;