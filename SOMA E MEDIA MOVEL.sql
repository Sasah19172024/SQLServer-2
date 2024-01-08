--funcoes de janela
--CALCULO DE SOMA MOVEL E MEDIA MOVEL

CREATE TABLE Resultado(
	Data_Fechamento DATETIME,
	Mes_Ano VARCHAR(100),
	Faturamento_MM FLOAT)


INSERT INTO Resultado(Data_Fechamento, Mes_Ano ,Faturamento_MM)
VALUES
	('01/01/2020','JAN-20', 8),
	('01/02/2020','FEV-20', 10),
	('01/03/2020','MAR-20', 6),
	('01/04/2020','ABR-20', 9),
	('01/05/2020','MAI-20', 5),
	('01/06/2020','JUN-20', 4),
	('01/07/2020','JUL-20', 7),
	('01/08/2020','AGO-20', 11),
	('01/09/2020','SET-20', 9),
	('01/10/2020','OUT-20', 12),
	('01/11/2020','NOV-20', 11),
	('01/12/2020','DEZ-20', 10)


SELECT 
	* ,
	SUM(Faturamento_MM) OVER(ORDER BY Data_Fechamento ROWS BETWEEN 1 PRECEDING AND CURRENT ROW) AS 'SOMA MOVEL',
	AVG(Faturamento_MM) OVER(ORDER BY Data_Fechamento ROWS BETWEEN 1 PRECEDING AND CURRENT ROW) AS 'MEDIA MOVEL'
FROM Resultado


SELECT 
	* ,
	SUM(Faturamento_MM) OVER(ORDER BY Data_Fechamento ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS 'SOMA MOVEL'
FROM Resultado


SELECT 
	* ,
	SUM(Faturamento_MM) OVER(ORDER BY Data_Fechamento ROWS BETWEEN UNBOUNDED PRECEDING AND 1 FOLLOWING)
FROM Resultado