/*4. Complementa a tabela DimProduct com a informação de ProductCategoryDescription. Utilize 
o LEFT JOIN e retorne em seu SELECT apenas as 5 colunas que considerar mais relevantes*/

SELECT * FROM DimProduct
SELECT * FROM DimProductCategory
	
SELECT 
	ProductKey,
	ProductName,
	ProductDescription,
	ProductCategoryName,
	ProductCategoryDescription
FROM DimProduct
LEFT JOIN DimProductCategory
 ON DimProduct.ProductSubcategoryKey = DimProductCategory.ProductCategoryKey
