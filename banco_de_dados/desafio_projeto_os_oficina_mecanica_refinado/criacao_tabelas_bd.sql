-- Criando Banco de Dados para o cenário de E-commerce com caracteres especiais (acentuação)
CREATE DATABASE OS_OficinaMecânica
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;

-- Visualizando todos os BDs existentes
SHOW DATABASES;

-- Acessando o BD
USE OS_OficinaMecânica;

-- Criando tabelas
CREATE TABLE IF NOT EXISTS Cliente (
		idCliente INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
		nomeCliente VARCHAR(45) NOT NULL,
		documentoCliente ENUM('CPF','CNPJ') NOT NULL,
		númeroDocumentoCliente VARCHAR(14) NOT NULL UNIQUE,
		telefoneCliente VARCHAR(15) NOT NULL,
		emailCliente VARCHAR(45) NOT NULL
) DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS Veículo (
		idVeículo INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        númeroDocumentoVeículo VARCHAR(45) NOT NULL UNIQUE,
        marcaVeículo VARCHAR(45) NOT NULL,
        modeloVeículo VARCHAR(45) NOT NULL,
        anoVeículo YEAR NOT NULL,
        placaVeículo VARCHAR(8) NOT NULL,
        solicitaçãoServiçoVeículo VARCHAR(45) NOT NULL
) DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS Mecânico (
		idMecânico INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        nomeMecânico VARCHAR(45) NOT NULL,
        especialidadeMecânico VARCHAR(45) NOT NULL,
        endereçoMecânico VARCHAR(45) NOT NULL
) DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS EquipeMecânicos (
		idEquipeMecânicos INT NOT NULL AUTO_INCREMENT PRIMARY KEY
) DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS OrdemDeServiço (
		idOrdemDeServiço INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        statusOS VARCHAR(45) NOT NULL,
        dataEmissãoOS DATE NOT NULL,
        dataConclusãoServiço DATE NOT NULL
) DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS Orçamento (
		idOrçamento INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
		preçoTotalServiço DECIMAL(10,2) NOT NULL
) DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS MãoDeObra (
		idMãoDeObra INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        descriçãoMãoDeObra VARCHAR(45) NOT NULL,
        preçoMãoDeObra DECIMAL(10,2) NOT NULL
) DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS Peça (
		idPeça INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        nomePeça VARCHAR(45) NOT NULL,
        preçoPeça DECIMAL(10,2) NOT NULL,
        quantidadePeça INT NOT NULL
) DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS AutorizaçãoServiço (
		idAutorizaçãoServiço INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
		statusAutorização BOOLEAN NOT NULL DEFAULT true 
) DEFAULT CHARSET=utf8mb4;