/*4. a) Voc� deve fazer uma consulta � tabela FactOnlineSales e descobrir qual � o nome completo 
do cliente que mais realizou compras online (de acordo com a coluna SalesQuantity).*/
SELECT * FROM DimCustomer
SELECT TOP(100)* FROM FactOnlineSales

SELECT TOP(100)
	FactOnlineSales.CustomerKey,
	FirsTName,
	MiddleName,
	LastName,
	SUM(SalesAmount) AS 'TOT vendido'
FROM FactOnlineSales
LEFT JOIN DimCustomer
	ON FactOnlineSales.CustomerKey = DimCustomer.CustomerKey
GROUP BY FactOnlineSales.CustomerKey, FirsTName, MiddleName, LastName
ORDER BY SUM(SalesAmount) DESC

/*b) Feito isso, fa�a um agrupamento de produtos e descubra quais foram os top 10 produtos mais 
comprados pelo cliente da letra a, considerando o nome do produto.*/

SELECT TOP(100)* FROM FactOnlineSales
SELECT * FROM DimProduct

SELECT TOP(10)
	CustomerKey,
	FactOnlineSales.ProductKey,
	ProductName,
	SUM(SalesQuantity) AS 'TOT vendido'
FROM FactOnlineSales
INNER JOIN DimProduct
	ON FactOnlineSales.ProductKey = DimProduct.ProductKey
WHERE CustomerKey = 19053
GROUP BY CustomerKey,FactOnlineSales.ProductKey, ProductName
ORDER BY SUM(SalesQuantity) DESC

