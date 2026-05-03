-- Criação do banco de dados comercio
CREATE DATABASE IF NOT EXISTS comercio;

-- Usar o banco de dados
USE comercio;

-- ========================================
-- TABELA: clientes
-- ========================================
CREATE TABLE IF NOT EXISTS clientes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(150) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    telefone VARCHAR(20),
    cpf VARCHAR(14) UNIQUE,
    data_nascimento DATE,
    endereco VARCHAR(255),
    cidade VARCHAR(100),
    estado VARCHAR(2),
    cep VARCHAR(10),
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    data_atualizacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    ativo BOOLEAN DEFAULT TRUE
);

-- ========================================
-- TABELA: produtos
-- ========================================
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

-- ========================================
-- TABELA: pedidos
-- ========================================
CREATE TABLE IF NOT EXISTS pedidos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT NOT NULL,
    numero_pedido VARCHAR(50) UNIQUE NOT NULL,
    data_pedido TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    data_entrega DATE,
    valor_total DECIMAL(12, 2) NOT NULL,
    status ENUM('pendente', 'processando', 'enviado', 'entregue', 'cancelado') DEFAULT 'pendente',
    observacoes TEXT,
    data_atualizacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id) ON DELETE CASCADE
);

-- ========================================
-- TABELA: itens_pedido
-- ========================================
CREATE TABLE IF NOT EXISTS itens_pedido (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_pedido INT NOT NULL,
    id_produto INT NOT NULL,
    quantidade INT NOT NULL,
    preco_unitario DECIMAL(10, 2) NOT NULL,
    subtotal DECIMAL(12, 2) NOT NULL,
    FOREIGN KEY (id_pedido) REFERENCES pedidos(id) ON DELETE CASCADE,
    FOREIGN KEY (id_produto) REFERENCES produtos(id) ON DELETE CASCADE
);

-- ========================================
-- TABELA: pagamentos
-- ========================================
CREATE TABLE IF NOT EXISTS pagamentos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_pedido INT NOT NULL,
    metodo_pagamento ENUM('cartao_credito', 'cartao_debito', 'boleto', 'pix', 'dinheiro') NOT NULL,
    valor DECIMAL(12, 2) NOT NULL,
    status_pagamento ENUM('pendente', 'aprovado', 'rejeitado', 'reembolsado') DEFAULT 'pendente',
    data_pagamento TIMESTAMP,
    data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    data_atualizacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (id_pedido) REFERENCES pedidos(id) ON DELETE CASCADE
);

-- ========================================
-- TABELA: avaliacoes
-- ========================================
CREATE TABLE IF NOT EXISTS avaliacoes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT NOT NULL,
    id_produto INT NOT NULL,
    id_pedido INT NOT NULL,
    nota INT CHECK (nota >= 1 AND nota <= 5),
    comentario TEXT,
    data_avaliacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id) ON DELETE CASCADE,
    FOREIGN KEY (id_produto) REFERENCES produtos(id) ON DELETE CASCADE,
    FOREIGN KEY (id_pedido) REFERENCES pedidos(id) ON DELETE CASCADE
);

-- ========================================
-- TABELA: historico_estoque
-- ========================================
CREATE TABLE IF NOT EXISTS historico_estoque (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_produto INT NOT NULL,
    quantidade_anterior INT,
    quantidade_nova INT,
    tipo_movimento ENUM('entrada', 'saida', 'ajuste', 'devolucao') NOT NULL,
    motivo VARCHAR(255),
    data_movimento TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_produto) REFERENCES produtos(id) ON DELETE CASCADE
);

-- ========================================
-- ÍNDICES
-- ========================================

-- Clientes
CREATE INDEX idx_cliente_email ON clientes(email);
CREATE INDEX idx_cliente_cpf ON clientes(cpf);
CREATE INDEX idx_cliente_ativo ON clientes(ativo);

-- Produtos
CREATE INDEX idx_produto_nome ON produtos(nome);
CREATE INDEX idx_produto_categoria ON produtos(categoria);
CREATE INDEX idx_produto_ativo ON produtos(ativo);

-- Pedidos
CREATE INDEX idx_pedido_cliente ON pedidos(id_cliente);
CREATE INDEX idx_pedido_status ON pedidos(status);
CREATE INDEX idx_pedido_numero ON pedidos(numero_pedido);

-- Itens Pedido
CREATE INDEX idx_itens_pedido ON itens_pedido(id_pedido);
CREATE INDEX idx_itens_produto ON itens_pedido(id_produto);

-- Pagamentos
CREATE INDEX idx_pagamento_pedido ON pagamentos(id_pedido);
CREATE INDEX idx_pagamento_status ON pagamentos(status_pagamento);

-- Avaliações
CREATE INDEX idx_avaliacao_cliente ON avaliacoes(id_cliente);
CREATE INDEX idx_avaliacao_produto ON avaliacoes(id_produto);

-- Histórico
CREATE INDEX idx_historico_produto ON historico_estoque(id_produto);

-- ========================================
-- DADOS DE EXEMPLO
-- ========================================

-- Clientes
INSERT INTO clientes (nome, email, telefone, cpf, data_nascimento, endereco, cidade, estado, cep) VALUES
('João Silva', 'joao@email.com', '11987654321', '12345678901234', '1990-05-15', 'Rua A, 123', 'São Paulo', 'SP', '01234-567'),
('Maria Santos', 'maria@email.com', '11987654322', '12345678901235', '1995-08-22', 'Rua B, 456', 'Rio de Janeiro', 'RJ', '20234-567'),
('Carlos Costa', 'carlos@email.com', '11987654323', '12345678901236', '1988-12-10', 'Rua C, 789', 'Belo Horizonte', 'MG', '30234-567'),
('Ana Oliveira', 'ana@email.com', '11987654324', '12345678901237', '1992-03-30', 'Rua D, 321', 'Brasília', 'DF', '70234-567'),
('Pedro Ferreira', 'pedro@email.com', '11987654325', '12345678901238', '1998-07-05', 'Rua E, 654', 'Salvador', 'BA', '40234-567');

-- Produtos
INSERT INTO produtos (nome, descricao, preco, quantidade_estoque, categoria) VALUES
('Notebook Dell', 'Notebook Dell Inspiron 15, Intel Core i5', 3500.00, 10, 'Eletrônicos'),
('Mouse Logitech', 'Mouse sem fio Logitech MX Master 3', 350.00, 25, 'Periféricos'),
('Teclado Mecânico', 'Teclado mecânico RGB com switch Blue', 450.00, 15, 'Periféricos'),
('Monitor LG 24"', 'Monitor LG 24 polegadas Full HD', 800.00, 8, 'Monitores'),
('Webcam HD', 'Webcam 1080p com microfone integrado', 200.00, 20, 'Periféricos');

-- Pedidos
INSERT INTO pedidos (id_cliente, numero_pedido, data_pedido, valor_total, status) VALUES
(1, 'PED-2026-001', '2026-05-01', 3850.00, 'entregue'),
(2, 'PED-2026-002', '2026-05-02', 1250.00, 'enviado'),
(3, 'PED-2026-003', '2026-05-03', 800.00, 'processando');

-- Itens Pedido
INSERT INTO itens_pedido (id_pedido, id_produto, quantidade, preco_unitario, subtotal) VALUES
(1, 1, 1, 3500.00, 3500.00),
(1, 2, 1, 350.00, 350.00),
(2, 3, 1, 450.00, 450.00),
(2, 5, 2, 200.00, 400.00),
(3, 4, 1, 800.00, 800.00);

-- Pagamentos
INSERT INTO pagamentos (id_pedido, metodo_pagamento, valor, status_pagamento, data_pagamento) VALUES
(1, 'cartao_credito', 3850.00, 'aprovado', '2026-05-01'),
(2, 'pix', 1250.00, 'aprovado', '2026-05-02'),
(3, 'boleto', 800.00, 'pendente', NULL);

-- Avaliações
INSERT INTO avaliacoes (id_cliente, id_produto, id_pedido, nota, comentario) VALUES
(1, 1, 1, 5, 'Notebook excelente, entrega rápida!'),
(1, 2, 1, 4, 'Mouse bom, mas poderia ser mais barato'),
(2, 3, 2, 5, 'Teclado maravilhoso, muito satisfeito!');

-- Histórico Estoque
INSERT INTO historico_estoque (id_produto, quantidade_anterior, quantidade_nova, tipo_movimento, motivo) VALUES
(1, 12, 10, 'saida', 'Venda pedido PED-2026-001'),
(2, 26, 25, 'saida', 'Venda pedido PED-2026-001'),
(3, 16, 15, 'saida', 'Venda pedido PED-2026-002'),
(5, 22, 20, 'saida', 'Venda pedido PED-2026-002'),
(4, 9, 8, 'saida', 'Venda pedido PED-2026-003');

-- ========================================
-- CONSULTAS DE VERIFICAÇÃO
-- ========================================

-- Verificar clientes
SELECT * FROM clientes;

-- Verificar produtos
SELECT * FROM produtos;

-- Verificar pedidos com informações do cliente
SELECT p.id, p.numero_pedido, c.nome, p.valor_total, p.status, p.data_pedido
FROM pedidos p
JOIN clientes c ON p.id_cliente = c.id;

-- Verificar itens de um pedido
SELECT ip.id, pr.nome, ip.quantidade, ip.preco_unitario, ip.subtotal
FROM itens_pedido ip
JOIN produtos pr ON ip.id_produto = pr.id
WHERE ip.id_pedido = 1;

-- Verificar pagamentos
SELECT p.id, pd.numero_pedido, p.metodo_pagamento, p.valor, p.status_pagamento
FROM pagamentos p
JOIN pedidos pd ON p.id_pedido = pd.id;
