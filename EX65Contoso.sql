/*Crie uma View que seja o resultado de um agrupamento da tabela FactSales. Este 
agrupamento deve considerar o SalesQuantity (Quantidade Total Vendida) por Nome do 
Produto. Chame esta View de vwTotalVendidoProdutos.
OBS: Para isso, você terá que utilizar um JOIN para relacionar as tabelas FactSales e 
DimProduct*/


SELECT * FROM DimProduct
SELECT TOP(100)* FROM FactSales

CREATE VIEW vwTotalVendidoProdutos AS
SELECT 
	ProductName,
	SUM(SalesQuantity) AS 'QNT VENDIDA'
FROM DimProduct
INNER JOIN FactSales
	ON DimProduct.ProductKey = FactSales.ProductKey
GROUP BY ProductName

SELECT * FROM vwTotalVendidoProdutos