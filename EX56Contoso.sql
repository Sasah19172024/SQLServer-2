/*1. O setor de vendas decidiu aplicar um desconto aos produtos de acordo com a sua classe. O 
percentual aplicado dever� ser de:
Economy -> 5%
Regular -> 7%
Deluxe -> 9%
a) Fa�a uma consulta � tabela DimProduct que retorne as seguintes colunas: ProductKey, 
ProductName, e outras duas colunas que dever�o retornar o % de Desconto e UnitPrice com 
desconto.
b) Fa�a uma adapta��o no c�digo para que os % de desconto de 5%, 7% e 9% sejam facilmente 
modificados (dica: utilize vari�veis).*/

SELECT
	ProductKey,
	ProductName,
	CASE
		WHEN ClassName = 'Economy' THEN '5%'
		WHEN ClassName = 'Regular' THEN '7%'
		ELSE '9'
	END AS 'DESCONTO',
	CASE 
		WHEN ClassName = 'Economy' THEN UnitPrice -(0.05 * UnitPrice) 
		WHEN ClassName = 'Regular' THEN UnitPrice -(0.07 * UnitPrice) 
		ELSE 0.09 * UnitPrice - UnitPrice
	END AS 'PRE�O'
FROM DimProduct


DECLARE @P1 FLOAT = 0.05,
		@P2 FLOAT = 0.07,
		@P3 FLOAT = 0.09

SELECT
	ProductKey,
	ProductName,
	CASE
		WHEN ClassName = 'Economy' THEN @P1
		WHEN ClassName = 'Regular' THEN @P2
		ELSE @P3
	END AS 'DESCONTO',
	CASE 
		WHEN ClassName = 'Economy' THEN UnitPrice -(@P1 * UnitPrice) 
		WHEN ClassName = 'Regular' THEN UnitPrice -(@P2 * UnitPrice) 
		ELSE @P3 * UnitPrice - UnitPrice
	END AS 'PRE�O',
	UnitPrice
FROM DimProduct