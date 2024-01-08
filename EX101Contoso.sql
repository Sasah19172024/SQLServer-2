--2. Crie uma Procedure que lista os top N clientes de acordo com a data de primeira compra. O 
--valor de N deve ser um parâmetro de entrada da sua Procedure.

CREATE OR ALTER PROCEDURE lista_top_clientes(@topn INT)
AS
BEGIN
	SELECT TOP(@topn)
		FirstName,
		EmailAddress,
		DateFirstPurchase
	FROM DimCustomer
	WHERE CustomerType = 'Person'
	ORDER BY DateFirstPurchase
END

EXECUTE lista_top_clientes @topn = 100