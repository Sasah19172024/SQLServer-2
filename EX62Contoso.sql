/* a) A partir da tabela DimProduct, crie uma View contendo as informações de
ProductName, ColorName, UnitPrice e UnitCost, da tabela DimProduct. Chame essa View 
de vwProdutos.
b) A partir da tabela DimEmployee, crie uma View mostrando FirstName, BirthDate, 
DepartmentName. Chame essa View de vwFuncionarios.
c) A partir da tabela DimStore, crie uma View mostrando StoreKey, StoreName e 
OpenDate. Chame essa View de vwLojas.*/CREATE VIEW vwProdutos ASSELECT 	ProductName,	ColorName,	UnitPrice,	UnitCostFROM DimProductCREATE VIEW vwFuncionarios ASSELECT	FirstName, 
	BirthDate, 
	DepartmentNameFROM 	DimEmployeeCREATE VIEW vwLojas ASSELECT	StoreKey, 
	StoreName,
	OpenDateFROM DimStore