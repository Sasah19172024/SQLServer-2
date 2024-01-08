--5. A partir da view criada no exercício anterior, você deverá fazer uma soma móvel 
--considerando sempre o mês atual + 2 meses para trás.

SELECT
	*,
	SUM(QTD_ABERTA) OVER(ORDER BY ID ROWS BETWEEN 2 PRECEDING AND CURRENT ROW )
FROM vwHistoricoLojas