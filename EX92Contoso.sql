6. Utilize a vwHistoricoLojas para calcular o acumulado de lojas abertas a cada ano/mês
SELECT
	*,
	SUM(QTD_ABERTA) OVER(ORDER BY ID ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS 'ACUMULADO'
FROM
	vwHistoricoLojas
