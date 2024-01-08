/*5. A tabela DimEmployee possui uma informação de data de contratação (HireDate). A área de 
RH, no entanto, precisa das informações dessas datas de forma separada em dia, mês e ano, pois 
será feita uma automatização para criação de um relatório de RH, e facilitaria muito se essas 
informações estivessem separadas em uma tabela.
Você deverá realizar uma consulta à tabela DimEmployee e retornar uma tabela contendo as 
seguintes informações: FirstName, EmailAddress, HireDate, além das colunas de Dia, Mês e Ano 
de contratação. 
Obs1: A coluna de Mês deve conter o nome do mês por extenso, e não o número do mês.
Obs2: Lembre-se de nomear cada uma dessas colunas em sua consulta para garantir que o 
entendimento de cada informação ficará 100% claro.*/

SELECT * FROM DimEmployee

SELECT 
	FirstName, 
	EmailAddress, 
	HireDate,
	DAY(HireDate) AS DIA,
	FORMAT(HireDate, 'MMMM') AS MES,
	YEAR(HireDate) AS ANO
FROM DimEmployee