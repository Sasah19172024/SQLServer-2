--8. Fa�a uma tabela resumo mostrando o resultado do planejamento estrat�gico por ano.

SELECT TOP(100)* FROM FactStrategyPlan
select * from DimDate

SELECT 
	CalendarYearLabel,
	SUM(Amount)
FROM FactStrategyPlan
INNER JOIN DimDate
	ON FactStrategyPlan.Datekey = DimDate.Datekey
GROUP BY CalendarYearLabel