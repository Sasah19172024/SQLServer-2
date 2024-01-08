SELECT ProductKey, ProductName, ProductSubcategoryKey FROM DimProduct
SELECT ProductSubcategoryKey, ProductSubcategoryName FROM DimProductSubcategory

SELECT 
	ProductKey, 
	ProductName, 
	DimProduct.ProductSubcategoryKey,
	ProductSubcategoryName
FROM DimProduct
LEFT JOIN DimProductSubcategory
ON DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey