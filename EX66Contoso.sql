--5. Faça as seguintes alterações nas tabelas da questão 1.
--a. Na View criada na letra a da questão 1, adicione a coluna de BrandName.

ALTER VIEW vwProdutos AS
SELECT 
	ProductName,
	ColorName,
	UnitPrice,
	UnitCost,
	BrandName
FROM DimProduct


--b. Na View criada na letra b da questão 1, faça um filtro e considere apenas os 
--funcionários do sexo feminino.

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

--c. Na View criada na letra c da questão 1, faça uma alteração e filtre apenas as lojas 
--ativas.

ALTER VIEW vwLojas AS
SELECT
	StoreKey, 
	StoreName,
	OpenDate
FROM DimStore
WHERE Status = 'On'


