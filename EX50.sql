/*a) Seu gestor te pede para listar todos os produtos para que seja criado um gráfico para ser 
apresentado na reunião diária de equipe. Faça uma consulta à tabela DimProduct que 
retorne (1) o nome do produto e (2) a quantidade de caracteres que cada produto tem, 
e ordene essa tabela do produto com a maior quantidade de caracteres para a menor.
b) Qual é a média de caracteres dos nomes dos produtos?
c) Analise a estrutura dos nomes dos produtos e verifique se seria possível reduzir o tamanho 
do nome dos produtos. (Dica: existem informações redundantes nos nomes dos produtos?
Seria possível substituí-las?)
d) Qual é a média de caracteres nesse novo cenário*/

SELECT 
	ProductName,
	LEN(ProductName) AS 'NUMERO DE CARAC.'
FROM DimProduct

SELECT 
	AVG(LEN(ProductName)) AS MEDIA
FROM DimProduct

SELECT 
	ProductName,
	REPLACE(REPLACE(ProductName, BrandName , ''), ColorName, '')
FROM DimProduct

SELECT 
	AVG(LEN(REPLACE(REPLACE(ProductName, BrandName , ''), ColorName, '')
)) AS MEDIA
FROM DimProduct