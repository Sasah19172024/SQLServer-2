/*8. Faça uma consulta para descobrir os seguintes indicadores dos seus produtos:
Maior quantidade de produtos por marca
Menor quantidade de produtos por marca
Média de produtos por marca*/

SELECT
	MAX(Q) AS 'MAXIMO',
	MIN(Q) AS 'MINIMO',
	AVG(Q) AS 'MEDIA'
FROM(
	SELECT	
		BrandName,
		COUNT(*) AS 'Q'
	FROM DimpRODUCT
	GROUP BY BrandName) AS T


SELECT	
	BrandName,
	COUNT(*)
FROM DimpRODUCT
GROUP BY BrandName