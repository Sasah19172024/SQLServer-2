4. Fa�a uma query que retorne os clientes que recebem um sal�rio anual acima da m�dia. A sua 
query deve retornar as colunas CustomerKey, FirstName, LastName, EmailAddress e 
YearlyIncome.
Obs: considere apenas os clientes que s�o 'Pessoas F�sicas'.

SELECT
	CustomerKey, 
	FirstName, 
	LastName, 
	EmailAddress, 
	YearlyIncome,
	CustomerType
FROM DimCustomer
WHERE YearlyIncome > (SELECT AVG(YearlyIncome) FROM DimCustomer WHERE CustomerType = 'Person') AND CustomerType = 'Person'

