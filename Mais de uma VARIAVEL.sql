-- [SQL Server] Variáveis
-- Aula 16 de 23: Acumulando valores dentro de uma variável

-- Exemplo 1: Retorne uma lista com os nomes dos funcionários do departamento de Marketing

DECLARE @VARLISTANAMES VARCHAR(50)
SET @VARLISTANAMES = ''

SELECT	
	@VARLISTANAMES = @VARLISTANAMES + FirstName + ', ' + CHAR(10)
FROM DimEmployee
 WHERE Gender = 'F' AND DepartmentName = 'Marketing'

 PRINT @VARLISTANAMES