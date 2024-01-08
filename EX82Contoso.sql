/*9. Crie uma CTE que seja o agrupamento da tabela DimProduct, armazenando o total de 
produtos por marca. Em seguida, faça um SELECT nesta CTE, descobrindo qual é a quantidade 
máxima de produtos para uma marca. Chame esta CTE de CTE_QtdProdutosPorMarca.*/

WITH CTE_QtdProdutosPorMarca AS(
	SELECT
		BrandName,
		COUNT(*) AS 'QTD'
	FROM DimProduct
	GROUP BY BrandName
)

SELECT * FROM CTE_QtdProdutosPorMarca