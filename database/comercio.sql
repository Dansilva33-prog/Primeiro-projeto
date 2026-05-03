-- Criação do banco de dados comercio
CREATE DATABASE IF NOT EXISTS comercio;

-- Usar o banco de dados
USE comercio;

-- Criação da tabela produtos
CREATE TABLE IF NOT EXISTS produtos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10, 2) NOT NULL,
    quantidade_estoque INT NOT NULL DEFAULT 0,
    categoria VARCHAR(50),
    data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    data_atualizacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    ativo BOOLEAN DEFAULT TRUE
);

-- Índices para melhor performance
CREATE INDEX idx_nome ON produtos(nome);
CREATE INDEX idx_categoria ON produtos(categoria);
CREATE INDEX idx_ativo ON produtos(ativo);

-- Inserção de dados de exemplo
INSERT INTO produtos (nome, descricao, preco, quantidade_estoque, categoria) VALUES
('Notebook Dell', 'Notebook Dell Inspiron 15, Intel Core i5', 3500.00, 10, 'Eletrônicos'),
('Mouse Logitech', 'Mouse sem fio Logitech MX Master 3', 350.00, 25, 'Periféricos'),
('Teclado Mecânico', 'Teclado mecânico RGB com switch Blue', 450.00, 15, 'Periféricos'),
('Monitor LG 24"', 'Monitor LG 24 polegadas Full HD', 800.00, 8, 'Monitores'),
('Webcam HD', 'Webcam 1080p com microfone integrado', 200.00, 20, 'Periféricos');

-- Selecionar todos os produtos para verificar
SELECT * FROM produtos;
