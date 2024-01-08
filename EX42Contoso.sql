--7. Calcule a SOMA TOTAL de AMOUNT referente à tabela FactStrategyPlan destinado aos 
--cenários: Actual e Budget.

SELECT * FROM FactStrategyPlan
SELECT TOP(100)* FROM DimScenario

SELECT
	ScenarioName,
	SUM(Amount)
FROM FactStrategyPlan
INNER JOIN DimScenario
	ON FactStrategyPlan.ScenarioKey = DimScenario.ScenarioKey
WHERE ScenarioName IN ('Actual', 'Budget') 
GROUP BY ScenarioName