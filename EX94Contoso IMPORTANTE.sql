--8. Faça os cálculos de MoM e YoY para avaliar o percentual de crescimento de novos clientes, 
--entre o mês atual e o mês anterior, e entre um mês atual e o mesmo mês do ano anterior.

SELECT * FROM vwNovosClientes

SELECT
	*,
	LAG(Novos_Clientes, 1) OVER(ORDER BY ID),
	FORMAT(1.0 * Novos_Clientes /NULLIF(LAG(Novos_Clientes, 1) OVER(ORDER BY ID), 0) - 1, '0.00%') AS 'MoM',
	FORMAT(1.0 * Novos_Clientes /NULLIF(LAG(Novos_Clientes, 1E) OVER(ORDER BY ID), 0) - 1, '0.00%') AS 'YoY'
FROM vwNovosClientes