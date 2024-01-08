CREATE VIEW vwProdutos AS
SELECT
BrandName AS 'Marca',
ColorName AS 'Cor',
COUNT(*) AS 'Quantidade_Vendida',
ROUND(SUM(SalesAmount), 2) AS 'Receita_Total'
FROM DimProduct
INNER JOIN FactSales
ON DimProduct.ProductKey = FactSales.ProductKey
GROUP BY BrandName, ColorName


--CONTIDADE TOTAL VENDIDA DOS PRODUTOS
/*1. Utilize a View vwProdutos para criar uma coluna extra calculando a quantidade total vendida 
dos produtos.
2. Crie mais uma coluna na consulta anterior, incluindo o total de produtos vendidos para cada 
marca.
3. Calcule o % de participação do total de vendas de produtos por marca. 
Ex: A marca A. Datum teve uma quantidade total de vendas de 199.041 de um total de 3.406.089 
de vendas. Isso significa que a da marca A. Datum é 199.041/3.406.089 = 5,84%.*/
SELECT 
	* ,
	SUM(Quantidade_Vendida) OVER() AS 'QTD TOTAL',
	SUM(Quantidade_Vendida) OVER(PARTITION BY Marca) AS 'QTD POR MARCA',
	FORMAT(1.0 * SUM(Quantidade_Vendida) OVER(PARTITION BY Marca)/SUM(Quantidade_Vendida) OVER(), '0.00%') AS '% POR MARCA'
FROM vwProdutos