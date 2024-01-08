/*5. Faça um resumo mostrando o total de produtos comprados (Sales Quantity) de acordo com o 
sexo dos clientes.*/

SELECT TOP(100)* FROM FactOnlineSales
SELECT * FROM DimCustomer

SELECT
	Gender,
	SUM(SalesQuantity)
FROM FactOnlineSales
INNER JOIN DimCustomer
	ON FactOnlineSales.CustomerKey = DimCustomer.CustomerKey
WHERE Gender IS NOT NULL
GROUP BY Gender
