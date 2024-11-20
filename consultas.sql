SELECT 
    c.Nome_Cliente AS Cliente,
    SUM(f.Valor_Total) AS Total_Gasto
FROM 
    dbo.fato_vendas f
JOIN 
    dbo.dim_cliente c ON f.ID_Cliente = c.ID_Cliente
GROUP BY 
    c.Nome_Cliente
ORDER BY 
    Total_Gasto DESC;




SELECT 
    ca.Nome_Campanha AS Campanha,
    SUM(f.Valor_Total) AS Receita_Total,
    SUM(f.Lucro) AS Lucro_Total
FROM 
    dbo.fato_vendas f
JOIN 
    dbo.dim_campanha ca ON f.ID_Campanha = ca.ID_Campanha
GROUP BY 
    ca.Nome_Campanha
ORDER BY 
    Receita_Total DESC;



SELECT 
    p.Nome_Produto AS Produto,
    SUM(f.Quantidade) AS Quantidade_Vendida
FROM 
    dbo.fato_vendas f
JOIN 
    dbo.dim_produto p ON f.ID_Produto = p.ID_Produto
GROUP BY 
    p.Nome_Produto
ORDER BY 
    Quantidade_Vendida DESC;



SELECT 
    c.loc_cliente AS Região,
    SUM(f.Valor_Total) AS Receita_Total
FROM 
    dbo.fato_vendas f
JOIN 
    dbo.dim_cliente c ON f.ID_Cliente = c.ID_Cliente
GROUP BY 
    c.loc_cliente
ORDER BY 
    Receita_Total DESC;

SELECT 
    p.Categoria,
    SUM(f.Lucro) AS Lucro_Total
FROM 
    dbo.fato_vendas f
JOIN 
    dbo.dim_produto p ON f.ID_Produto = p.ID_Produto
GROUP BY 
    p.Categoria
ORDER BY 
    Lucro_Total DESC;








