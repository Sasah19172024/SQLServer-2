SELECT * FROM DimEmployee

SELECT
	FirstName,
	BaseRate,
	Status,
    [dbo].[BONIFICACAO](BaseRate, Status) AS 'bonificacao'
FROM DimEmployee

CREATE FUNCTION BONIFICACAO(@BaseRate FLOAT, @Status VARCHAR(50))
RETURNS FLOAT
AS
BEGIN
DECLARE @VAR FLOAT
	IF @Status = 'NULL'
		SET @VAR = 0.0
	ELSE
		SET @VAR = @BaseRate * 0.05
	RETURN @VAR 
END