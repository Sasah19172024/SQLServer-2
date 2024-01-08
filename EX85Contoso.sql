/*2. Você deverá criar uma estrutura de repetição que printe na tela a quantidade de contratações
para cada ano, desde 1996 até 2003. A informação de data de contratação encontra-se na
coluna HireDate da tabela DimEmployee. Utilize o formato:
X contratações em 1996
Y contratações em 1997
Z contratações em 1998
...
...
N contratações em 2003*/

SELECT * FROM DimEmployee

DECLARE @ANOi INT = 1997
DECLARE @ANOF INT = 2003

WHILE @ANOi <= @ANOF
BEGIN
	DECLARE @FUNC INT = (SELECT COUNT(*) FROM DimEmployee WHERE YEAR(HireDate) = @ANOi)
	PRINT 'A quantidade de contrat. do ano de ' + CONVERT(VARCHAR, @ANOi) + ' foi de ' + CONVERT(VARCHAR,@FUNC )
	SET @ANOi = @ANOi + 1
END