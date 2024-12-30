# 4. Construa uma tabela que avalie trimestralmente o resultado de vendas

SELECT 
    YEAR(data_venda) AS ano,
    QUARTER(data_venda) AS trimestre,
    FORMAT(SUM(valor), 2) AS total_vendas
FROM venda
GROUP BY YEAR(data_venda), QUARTER(data_venda)
ORDER BY ano, trimestre;

# Criação tabela vendas trimestral

CREATE TABLE TabVendasTrimestral AS
SELECT 
    YEAR(data_venda) AS Ano,
    QUARTER(data_venda) AS Trimestre,
    id_venda,
    duracao_contrato,
    SUM(valor) AS Total_Valor
FROM venda
GROUP BY 
    YEAR(data_venda),
    QUARTER(data_venda),
    id_venda,
    duracao_contrato
ORDER BY 
    Ano, Trimestre;
