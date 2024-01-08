--7. 
--a) Faça um cálculo de soma móvel de novos clientes nos últimos 2 meses.
SELECT
	* ,
	SUM(Novos_Clientes) OVER(ORDER BY ID ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) AS 'ACUMULADO'
FROM vwNovosClientes

--b) Faça um cálculo de média móvel de novos clientes nos últimos 2 meses.
SELECT
	* ,
	AVG(Novos_Clientes) OVER(ORDER BY ID ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) AS 'MEDIA'
FROM vwNovosClientes


--c) Faça um cálculo de acumulado dos novos clientes ao longo do tempo. 
SELECT
	* ,
	SUM(Novos_Clientes) OVER(ORDER BY ID ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS 'SUM'
FROM vwNovosClientes

--d) Faça um cálculo de acumulado intra-ano, ou seja, um acumulado que vai de janeiro a 
--dezembro de cada ano, e volta a fazer o cálculo de acumulado no ano seguinte.

SELECT
	* ,
	SUM(Novos_Clientes) OVER(PARTITION BY Ano ORDER BY ID ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS 'ACUMULADO'
FROM vwNovosClientes



