/*9. Crie uma CTE que seja o agrupamento da tabela DimProduct, armazenando o total de 
produtos por marca. Em seguida, fa�a um SELECT nesta CTE, descobrindo qual � a quantidade 
m�xima de produtos para uma marca. Chame esta CTE de CTE_QtdProdutosPorMarca.*/

WITH CTE_QtdProdutosPorMarca AS(
	SELECT
		BrandName,
		COUNT(*) AS 'QTD'
	FROM DimProduct
	GROUP BY BrandName
)

SELECT * FROM CTE_QtdProdutosPorMarca