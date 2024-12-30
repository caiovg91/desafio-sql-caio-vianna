# 2. Liste todas as vendas (ID) e seus respectivos clientes apenas no ano de 2020.

SELECT v.id_venda, c.nome_cliente, data_venda
FROM venda v
JOIN cliente c ON v.id_cliente = c.id_cliente
WHERE YEAR(v.data_venda) = 2020;