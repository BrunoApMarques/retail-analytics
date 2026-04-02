SELECT SUM(quantidade * preco_unitario) AS faturamento_total
FROM itens_pedido;

SELECT p.nome, SUM(i.quantidade) AS total_vendido
FROM itens_pedido i
JOIN produtos p ON i.produto_id = p.id
GROUP BY p.nome
ORDER BY total_vendido DESC
LIMIT 1;

SELECT c.nome, SUM(i.quantidade * i.preco_unitario) AS total_gasto
FROM clientes c
JOIN pedidos pe ON c.id = pe.cliente_id
JOIN itens_pedido i ON pe.id = i.pedido_id
GROUP BY c.nome
ORDER BY total_gasto DESC
LIMIT 1;

SELECT c.estado, SUM(i.quantidade * i.preco_unitario) AS total_vendas
FROM clientes c
JOIN pedidos pe ON c.id = pe.cliente_id
JOIN itens_pedido i ON pe.id = i.pedido_id
GROUP BY c.estado;