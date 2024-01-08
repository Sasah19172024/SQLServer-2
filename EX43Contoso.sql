--8. Faça uma tabela resumo mostrando o resultado do planejamento estratégico por ano.

SELECT TOP(100)* FROM FactStrategyPlan
select * from DimDate

SELECT 
	CalendarYearLabel,
	SUM(Amount)
FROM FactStrategyPlan
INNER JOIN DimDate
	ON FactStrategyPlan.Datekey = DimDate.Datekey
GROUP BY CalendarYearLabel