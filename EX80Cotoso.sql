/*7. Voc� dever� criar uma consulta para o setor de vendas que mostre as seguintes colunas da 
tabela DimProduct:
ProductKey,
ProductName,
BrandName,
UnitPrice
M�dia de UnitPrice.*/SELECT 	ProductKey,
	ProductName,
	BrandName,
	UnitPrice,	(SELECT AVG(UnitPrice) FROM DimProduct) AS 'MEDIA'FROM DimProductSELECT * FROM DimProduct