--1. Utilize o INNER JOIN para trazer os nomes das subcategorias dos produtos, da tabela 
--DimProductSubcategory para a tabela DimProduct.

SELECT * FROM DimProductSubcategory
SELECT * FROM DimProduct

SELECT 
	DimProduct.ProductKey,
	DimProduct.ProductName,
	DimProduct.ProductDescription,
	DimProduct.ProductSubcategoryKey,
	DimProductSubcategory.ProductSubcategoryName
FROM 
	DimProduct
INNER JOIN DimProductSubcategory
	ON DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey
