--2. O setor de controle de produtos quer fazer uma an�lise para descobrir quais s�o os produtos 
--que possuem um UnitPrice maior que o UnitPrice do produto de ID igual a 1893.


--a) A sua consulta resultante deve conter as colunas ProductKey, ProductName e UnitPrice 
--da tabela DimProduct.
SELECT 
	ProductKey, 
	ProductName,
	UnitPrice 
FROM DimProduct
WHERE UnitPrice > (SELECT ProductKey FROM DimProduct WHERE ProductKey = 1893)

--b) Nessa query voc� tamb�m deve retornar uma coluna extra, que informe o UnitPrice do 
--produto 1893.
SELECT 
	ProductKey, 
	ProductName,
	UnitPrice,
	(SELECT UnitPrice FROM DimProduct WHERE ProductKey = 1893) AS 'COMPARA��O'
FROM DimProduct
WHERE UnitPrice > (SELECT UnitPrice FROM DimProduct WHERE ProductKey = 1893)