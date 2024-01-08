/*2. Identifique uma coluna em comum entre as tabelas DimProductSubcategory e 
DimProductCategory. Utilize essa coluna para complementar informações na tabela 
DimProductSubcategory a partir da DimProductCategory. Utilize o LEFT JOIN.*/


SELECT * FROM DimProductSubcategory
SELECT * FROM DimProductCategory

SELECT
 DimProductCategory.ProductCategoryKey,
 ProductCategoryLabel,
 ProductCategoryName,
 DimProductSubcategory.ProductSubcategoryName

FROM
	DimProductCategory
LEFT JOIN DimProductSubcategory
 ON DimProductCategory.ProductCategoryKey = DimProductSubcategory.ProductCategoryKey