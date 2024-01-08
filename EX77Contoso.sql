4. Faça uma query que retorne os clientes que recebem um salário anual acima da média. A sua 
query deve retornar as colunas CustomerKey, FirstName, LastName, EmailAddress e 
YearlyIncome.
Obs: considere apenas os clientes que são 'Pessoas Físicas'.

SELECT
	CustomerKey, 
	FirstName, 
	LastName, 
	EmailAddress, 
	YearlyIncome,
	CustomerType
FROM DimCustomer
WHERE YearlyIncome > (SELECT AVG(YearlyIncome) FROM DimCustomer WHERE CustomerType = 'Person') AND CustomerType = 'Person'

