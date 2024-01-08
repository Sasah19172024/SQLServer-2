
CREATE VIEW vwClientes2 AS
SELECT 
	CONCAT(FirstName,'', LastName) AS 'NOME',
	CASE
	WHEN Gender = 'M' THEN 'Masculino'
	ELSE 'Feminino'
	END AS 'GENERO',
	EmailAddress,
	FORMAT(YearlyIncome, 'C') AS 'RENDA'
FROM DimCustomer


SELECT * FROM vwClientes2

