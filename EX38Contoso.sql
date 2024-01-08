/*Crie um agrupamento de quantidade vendida (SalesQuantity) por categoria do produto 
(ProductCategoryName). Obs: Você precisará fazer mais de 1 INNER JOIN, dado que a relação 
entre FactSales e DimProductCategory não é direta*/

SELECT TOP(100)* FROM FactSales
SELECT * FROM DimProduct
SELECT * FROM DimProductSubcategory
SELECT * FROM DimProductCategory


SELECT 
	ProductCategoryName,
	SUM(SalesQuantity) AS 'TOT vendido'
FROM FactSales
INNER JOIN DimProduct
	ON FactSales.ProductKey = DimProduct.ProductKey
		INNER JOIN DimProductSubcategory
			ON DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey
				INNER JOIN DimProductCategory
					ON DimProductSubCategory.ProductCategoryKey = DimProductCategory.ProductCategoryKey
GROUP BY ProductCategoryName
--ORDER BY SUM(SalesQuantity) DESC