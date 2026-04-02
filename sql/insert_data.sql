-- CLIENTES
INSERT INTO clientes (nome, email, cidade, estado) VALUES
('Bruno Silva', 'bruno@email.com', 'Campinas', 'SP'),
('Ana Souza', 'ana@email.com', 'São Paulo', 'SP'),
('Carlos Lima', 'carlos@email.com', 'Rio de Janeiro', 'RJ');

-- CATEGORIAS
INSERT INTO categorias (nome) VALUES
('Tênis'),
('Roupas'),
('Acessórios');

-- PRODUTOS
INSERT INTO produtos (nome, preco, categoria_id) VALUES
('Tênis Nike', 500.00, 1),
('Camiseta Adidas', 120.00, 2),
('Boné Puma', 80.00, 3);

-- PEDIDOS
INSERT INTO pedidos (cliente_id) VALUES
(1),
(2),
(1);

-- ITENS DO PEDIDO
INSERT INTO itens_pedido (pedido_id, produto_id, quantidade, preco_unitario) VALUES
(1, 1, 1, 500.00),
(1, 2, 2, 120.00),
(2, 3, 1, 80.00),
(3, 1, 1, 500.00);