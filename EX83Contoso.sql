/*10. Crie duas CTEs: 
(i) a primeira deve conter as colunas ProductKey, ProductName, ProductSubcategoryKey, 
BrandName e UnitPrice, da tabela DimProduct, mas apenas os produtos da marca Adventure 
Works. Chame essa CTE de CTE_ProdutosAdventureWorks.
(ii) a segunda deve conter as colunas ProductSubcategoryKey, ProductSubcategoryName, da 
tabela DimProductSubcategory mas apenas para as subcategorias ‘Televisions’ e ‘Monitors’. 
Chame essa CTE de CTE_CategoriaTelevisionsERadio.
Faça um Join entre essas duas CTEs, e o resultado deve ser uma query contendo todas as colunas 
das duas tabelas. Observe nesse exemplo a diferença entre o LEFT JOIN e o INNER JOIN*/

WITH CTE_ProdutosAdventureWorks AS (
	SELECT
		ProductKey, 
		ProductName, 
		ProductSubcategoryKey, 
		BrandName,
		UnitPrice
	FROM DimProduct
	WHERE BrandName = 'Adventure Works')
--SELECT * FROM CTE_ProdutosAdventureWorks
, CTE_CategoriaTelevisionsERadio AS(
	SELECT
		ProductSubcategoryKey, 
		ProductSubcategoryName
	FROM DimProductSubcategory
	WHERE ProductSubcategorYDescription = 'Televisions' OR ProductSubcategorYDescription = 'Monitors')
--SELECT * FROM CTE_CategoriaTelevisionsERadio

SELECT 
	* 
FROM CTE_ProdutosAdventureWorks
LEFT JOIN CTE_CategoriaTelevisionsERadio
 ON CTE_ProdutosAdventureWorks.ProductSubcategoryKey = CTE_CategoriaTelevisionsERadio.ProductSubcategoryKey




