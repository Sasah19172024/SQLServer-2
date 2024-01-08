/*1. a) Faça um resumo da quantidade vendida (Sales Quantity) de acordo com o nome do canal 
de vendas (ChannelName). Você deve ordenar a tabela final de acordo com SalesQuantity, 
em ordem decrescente.*/

SELECT TOP(100)* FROM FactSales
SELECT * FROM DimChannel

SELECT
	ChannelName,
	SUM(SalesQuantity)
FROM FactSales
INNER JOIN DimChannel
	ON FactSales.channelKey = DimChannel.ChannelKey
GROUP BY ChannelName
ORDER BY SUM(SalesQuantity) DESC


/*b) Faça um agrupamento mostrando a quantidade total vendida (Sales Quantity) e 
quantidade total devolvida (Return Quantity) de acordo com o nome das lojas 
(StoreName).*/

SELECT
	ChannelName,
	SUM(SalesQuantity) AS 'QTD vendida',
	SUM(ReturnQuantity) AS 'QTD retornada'
FROM FactSales
INNER JOIN DimChannel
	ON FactSales.channelKey = DimChannel.ChannelKey
GROUP BY ChannelName
ORDER BY SUM(SalesQuantity) DESC

/*c) Faça um resumo do valor total vendido (Sales Amount) para cada mês 
(CalendarMonthLabel) e ano (CalendarYear).*/
SELECT TOP(100)* FROM FactSales
SELECT * FROM DimDate

SELECT 
	SUM(SalesAmount) AS 'TOT vendido',
	CalendarMonthLabel,
	CalendarYear
FROM FactSales
LEFT JOIN DimDate
	ON FactSales.DateKey = DimDate.DateKey
GROUP BY CalendarMonthLabel, CalendarYear, CalendarMonth
ORDER BY CalendarMonth
