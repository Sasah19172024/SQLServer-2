--8. Fa�a os c�lculos de MoM e YoY para avaliar o percentual de crescimento de novos clientes, 
--entre o m�s atual e o m�s anterior, e entre um m�s atual e o mesmo m�s do ano anterior.

SELECT * FROM vwNovosClientes

SELECT
	*,
	LAG(Novos_Clientes, 1) OVER(ORDER BY ID),
	FORMAT(1.0 * Novos_Clientes /NULLIF(LAG(Novos_Clientes, 1) OVER(ORDER BY ID), 0) - 1, '0.00%') AS 'MoM',
	FORMAT(1.0 * Novos_Clientes /NULLIF(LAG(Novos_Clientes, 1E) OVER(ORDER BY ID), 0) - 1, '0.00%') AS 'YoY'
FROM vwNovosClientes