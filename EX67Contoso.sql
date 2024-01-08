/*6. a) Crie uma View que seja o resultado de um agrupamento da tabela DimProduct. O 
resultado esperado da consulta dever� ser o total de produtos por marca. Chame essa 
View de vw_6a.*/

SELECT * FROM DimProduct
CREATE VIEW vw_6a AS
SELECT 
	BrandName,
	COUNT(*) AS 'N de Produtos'
FROM DimProduct
GROUP BY BrandName

--b) Altere a View criada no exerc�cio anterior, adicionando o peso total por marca. Aten��o: 
--sua View final dever� ter ent�o 3 colunas: Nome da Marca, Total de Produtos e Peso Total.
ALTER VIEW vw_6a AS
SELECT 
	BrandName,
	COUNT(*) AS 'N de Produtos',
	SUM(WEIGHT) AS 'PESO'
FROM DimProduct
GROUP BY BrandName

SELECT * FROM vw_6a


--c) Exclua a View vw_6a

DROP VIEW vw_6a