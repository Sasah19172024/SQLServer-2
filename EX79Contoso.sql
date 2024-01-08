/*6. A empresa implementou um programa de fidelização de clientes empresariais. Todos aqueles 
que comprarem mais de 3000 unidades de um mesmo produto receberá descontos em outras 
compras.
Você deverá descobrir as informações de CustomerKey e CompanyName destes clientes.*/

SELECT * FROM DimCustomer
SELECT TOP(1000)* FROM FactSales

SELECT 
	CustomerKey,
	CompanyName
FROM DimCustomer
WHERE CustomerKey IN (SELECT CustomerKey FROM FactOnlineSales GROUP BY CustomerKey, ProductKey HAVING COUNT(*) >= 3000)