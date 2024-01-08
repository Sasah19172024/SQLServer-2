SELECT * FROM DimProduct

CREATE OR ALTER FUNCTION select_cor(@MARCA AS VARCHAR(50))
RETURNS TABLE
AS
RETURN 
	SELECT ColorName, COUNT(*) AS 'TOTAL' FROM DimProduct WHERE  BrandName = @MARCA GROUP BY ColorName

SELECT * FROM [dbo].[select_cor]('Contoso')