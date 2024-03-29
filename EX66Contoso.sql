--5. Fa�a as seguintes altera��es nas tabelas da quest�o 1.
--a. Na View criada na letra a da quest�o 1, adicione a coluna de BrandName.

ALTER VIEW vwProdutos AS
SELECT 
	ProductName,
	ColorName,
	UnitPrice,
	UnitCost,
	BrandName
FROM DimProduct


--b. Na View criada na letra b da quest�o 1, fa�a um filtro e considere apenas os 
--funcion�rios do sexo feminino.

ALTER VIEW vwFuncionarios AS
SELECT
	FirstName, 
	BirthDate, 
	DepartmentName,
	GENDER
FROM 
	DimEmployee
WHERE Gender = 'F'

SELECT * FROM vwFuncionarios

--c. Na View criada na letra c da quest�o 1, fa�a uma altera��o e filtre apenas as lojas 
--ativas.

ALTER VIEW vwLojas AS
SELECT
	StoreKey, 
	StoreName,
	OpenDate
FROM DimStore
WHERE Status = 'On'


