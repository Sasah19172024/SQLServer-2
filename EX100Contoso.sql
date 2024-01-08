SELECT * FROM DimProduct

/*CREATE OR ALTER PROCEDURE TOTprodutos(@MARCA VARCHAR(MAX))
AS
BEGIN
	SELECT
		COUNT(ProductName) AS'total',
		ProductDescription
	FROM DimProduct
	WHERE BrandName = @MARCA
GROUP BY ProductDescription
END

EXECUTE TOTprodutos @MARCA = 'Litware'*/


CREATE OR ALTER PROCEDURE TOTprodutos(@MARCA VARCHAR(MAX))
AS
BEGIN
	SELECT
		C.ProductCategoryName,
		COUNT(*)
	FROM DimProduct P
	INNER JOIN DimProductSubcategory S
		ON P.ProductSubcategoryKey = S.ProductSubcategoryKey
		INNER JOIN DimProductCategory C 
			ON S.ProductCategoryKey = C.ProductCategoryKey
	WHERE P.BrandName = @MARCA
	GROUP BY C.ProductCategoryName
END

EXECUTE TOTprodutos 'Contoso'