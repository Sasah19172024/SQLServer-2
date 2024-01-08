--3. Crie uma Procedure que recebe 2 argumentos: M�S (de 1 a 12) e ANO (1996 a 2003). Sua 
--Procedure deve listar todos os funcion�rios que foram contratados no m�s/ano informado.

CREATE OR ALTER PROCEDURE lista_funcionarios(@MES INT, @ANO INT)
AS
BEGIN
	SELECT * FROM DimEmployee
	WHERE DATEPART(MM, HireDate) = @MES AND DATEPART(YYYY, HireDate) = @ANO
	ORDER BY HireDate
END

EXECUTE lista_funcionarios 1,2000