CREATE OR REPLACE PROCEDURE cadastrar_venda (
    p_id_funcionario IN NUMBER,
    p_id_loja IN NUMBER,
    p_id_cliente IN NUMBER,
    p_valor_total IN NUMBER
) AS
BEGIN
    INSERT INTO venda (id_venda, id_funcionario, id_loja, id_cliente, data, valor_total)
    VALUES (venda_seq.NEXTVAL, p_id_funcionario, p_id_loja, p_id_cliente, SYSDATE, p_valor_total);
END;
