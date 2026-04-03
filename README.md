# 📊 Retail Analytics

Projeto de análise de dados simulando um cenário de varejo, com foco em modelagem de dados, SQL e geração de insights.

---

## 🎯 Objetivo

Simular um ambiente de vendas (e-commerce), estruturando os dados e respondendo perguntas de negócio como:

- Qual o faturamento total?
- Qual produto vende mais?
- Qual cliente mais compra?
- Como estão as vendas por região?

---

## 🧱 Modelagem de Dados

O projeto foi estruturado com as seguintes entidades:

- Clientes
- Produtos
- Categorias
- Pedidos
- Itens do Pedido

Relacionamentos principais:

Cliente → Pedido → Itens → Produto → Categoria

---

## 💻 Tecnologias utilizadas

- PostgreSQL
- SQL
- Git / GitHub

---

## 📊 Exemplos de Análises

### 💰 Faturamento total

```sql
SELECT SUM(quantidade * preco_unitario) AS faturamento_total
FROM itens_pedido;

🏆 Produto mais vendido

SELECT p.nome, SUM(i.quantidade) AS total_vendido
FROM itens_pedido i
JOIN produtos p ON i.produto_id = p.id
GROUP BY p.nome
ORDER BY total_vendido DESC
LIMIT 1;

👤 Cliente com maior gasto

SELECT c.nome, SUM(i.quantidade * i.preco_unitario) AS total_gasto
FROM clientes c
JOIN pedidos pe ON c.id = pe.cliente_id
JOIN itens_pedido i ON pe.id = i.pedido_id
GROUP BY c.nome
ORDER BY total_gasto DESC
LIMIT 1;

🧠 Aprendizados

Modelagem de dados relacional
Escrita de queries com JOIN e agregações
Análise de dados orientada ao negócio
Organização de projeto com Git

🚀 Próximos passos

Integração com Python (ETL)
Criação de dashboards (Power BI)