SELECT p.nome AS pacote, TO_CHAR(f.data_emissao, 'MM/YYYY') AS mes, SUM(f.valor) AS faturamento
FROM fatura f
JOIN assinatura a ON f.id_assinatura = a.id_assinatura
JOIN pacote p ON a.id_pacote = p.id_pacote
GROUP BY p.nome, TO_CHAR(f.data_emissao, 'MM/YYYY');
