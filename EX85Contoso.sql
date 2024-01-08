/*2. Voc� dever� criar uma estrutura de repeti��o que printe na tela a quantidade de contrata��es
para cada ano, desde 1996 at� 2003. A informa��o de data de contrata��o encontra-se na
coluna HireDate da tabela DimEmployee. Utilize o formato:
X contrata��es em 1996
Y contrata��es em 1997
Z contrata��es em 1998
...
...
N contrata��es em 2003*/

SELECT * FROM DimEmployee

DECLARE @ANOi INT = 1997
DECLARE @ANOF INT = 2003

WHILE @ANOi <= @ANOF
BEGIN
	DECLARE @FUNC INT = (SELECT COUNT(*) FROM DimEmployee WHERE YEAR(HireDate) = @ANOi)
	PRINT 'A quantidade de contrat. do ano de ' + CONVERT(VARCHAR, @ANOi) + ' foi de ' + CONVERT(VARCHAR,@FUNC )
	SET @ANOi = @ANOi + 1
END