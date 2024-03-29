/*5. A tabela DimEmployee possui uma informa��o de data de contrata��o (HireDate). A �rea de 
RH, no entanto, precisa das informa��es dessas datas de forma separada em dia, m�s e ano, pois 
ser� feita uma automatiza��o para cria��o de um relat�rio de RH, e facilitaria muito se essas 
informa��es estivessem separadas em uma tabela.
Voc� dever� realizar uma consulta � tabela DimEmployee e retornar uma tabela contendo as 
seguintes informa��es: FirstName, EmailAddress, HireDate, al�m das colunas de Dia, M�s e Ano 
de contrata��o. 
Obs1: A coluna de M�s deve conter o nome do m�s por extenso, e n�o o n�mero do m�s.
Obs2: Lembre-se de nomear cada uma dessas colunas em sua consulta para garantir que o 
entendimento de cada informa��o ficar� 100% claro.*/

SELECT * FROM DimEmployee

SELECT 
	FirstName, 
	EmailAddress, 
	HireDate,
	DAY(HireDate) AS DIA,
	FORMAT(HireDate, 'MMMM') AS MES,
	YEAR(HireDate) AS ANO
FROM DimEmployee