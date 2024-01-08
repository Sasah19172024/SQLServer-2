/*5. A tabela FactStrategyPlan resume o planejamento estratégico da empresa. Cada linha 
representa um montante destinado a uma determinada AccountKey.
a) Faça um SELECT das 100 primeiras linhas de C para reconhecer a tabela.
b) Faça um INNER JOIN para criar uma tabela contendo o AccountName para cada 
AccountKey da tabela FactStrategyPlan. O seu SELECT final deve conter as colunas:
• StrategyPlanKey
• DateKey
• AccountName
• Amount*/

SELECT TOP(100)* FROM FactStrategyPlan
SELECT * FROM DimAccount

SELECT TOP(100) 
 StrategyPlanKey,
 DateKey,
 AccountName,
 Amount,
 FactStrategyPlan.AccountKey
FROM FactStrategyPlan
INNER JOIN DimAccount
 ON FactStrategyPlan.AccountKey = DimAccount.AccountKey