SELECT l.nome AS loja, SUM(v.valor_total) AS total_vendas
FROM venda v
JOIN loja l ON v.id_loja = l.id_loja
GROUP BY l.nome;
