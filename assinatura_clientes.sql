SELECT c.nome, COUNT(*) AS qtd_assinaturas
FROM assinatura a
JOIN cliente c ON a.id_cliente = c.id_cliente
WHERE a.data_fim IS NULL OR a.data_fim > SYSDATE
GROUP BY c.nome
HAVING COUNT(*) > 1;
