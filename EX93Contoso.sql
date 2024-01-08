--7. 
--a) Fa�a um c�lculo de soma m�vel de novos clientes nos �ltimos 2 meses.
SELECT
	* ,
	SUM(Novos_Clientes) OVER(ORDER BY ID ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) AS 'ACUMULADO'
FROM vwNovosClientes

--b) Fa�a um c�lculo de m�dia m�vel de novos clientes nos �ltimos 2 meses.
SELECT
	* ,
	AVG(Novos_Clientes) OVER(ORDER BY ID ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) AS 'MEDIA'
FROM vwNovosClientes


--c) Fa�a um c�lculo de acumulado dos novos clientes ao longo do tempo. 
SELECT
	* ,
	SUM(Novos_Clientes) OVER(ORDER BY ID ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS 'SUM'
FROM vwNovosClientes

--d) Fa�a um c�lculo de acumulado intra-ano, ou seja, um acumulado que vai de janeiro a 
--dezembro de cada ano, e volta a fazer o c�lculo de acumulado no ano seguinte.

SELECT
	* ,
	SUM(Novos_Clientes) OVER(PARTITION BY Ano ORDER BY ID ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS 'ACUMULADO'
FROM vwNovosClientes



