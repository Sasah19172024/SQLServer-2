--9. Fa�a um agrupamento de quantidade de produtos por ProductSubcategoryName. Leve em 
--considera��o em sua an�lise apenas a marca Contoso e a cor Silver

SELECT * FROM DimProductSubcategory
SELECT * FROM DimProduct

SELECT 
	ProductSubcategoryName,
	COUNT(*) AS 'QTD produtos'
FROM DimProduct
INNER JOIN DimProductSubcategory
	ON DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey
WHERE BrandName = 'Contoso' AND ColorName = 'Silver'
GROUP BY ProductSubcategoryName