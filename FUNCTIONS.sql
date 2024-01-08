--O que é uma Function?

--1. Uma function é um conjunto de comandos que executam açõesretornavalor escalar. As functions ajudam a simplificarcódigo. Por exemplo,você tem um cálculo complexo que aparece diversas vezes no seu código, em vez de repetir váriasvezes aquela série de comandos, você pode simplesmente criar uma função e reaproveitá-la sempre que precisar.

--O próprio SQL tem diversas funções prontas e até agora, já vimos vários exemplos de funções deste tipo, como funções dendata, texto, e assim vai.

--Podemos visualizar as funçõessistemapasta Programação > FunçõesFunções do Sistema

--2. Como criar e utilizar uma Function
-- Imagine que voce queira fazer uma formatacao diferenciada na coluna data_nascimento, utilizando o datename.

SELECT * FROM dCliente

SELECT
	nome_cliente,
	data_nascimento,
	[dbo].[fnDataCompleta](data_nascimento)
FROM dCliente

-- Criando a funcao
CREATE FUNCTION fnDataCompleta(@data AS DATE)
RETURNS VARCHAR(MAX)
AS
BEGIN
	
	RETURN DATENAME(DW, @Data) + ', ' +
	DATENAME(D, @Data) + ' de ' +
	DATENAME(M, @Data) + 'de ' +
	DATENAME(YY, @Data)  
END


--3. alterando e excluindo uma function

CREATE OR ALTER FUNCTION fnDataCompleta(@data AS DATE)
RETURNS VARCHAR(MAX)
AS
BEGIN
	
	RETURN DATENAME(DW, @Data) + ', ' +
	DATENAME(D, @Data) + ' de ' +
	DATENAME(M, @Data) + 'de ' +
	DATENAME(YY, @Data)  + ' - ' +
	CASE
		WHEN MONTH(@Data) <= 6 THEN
			'(1° Semestre)'
		ELSE
			'(2° Semestre)'
	END
END


--4. Criando funcoes complexas
--Crie uma funcao para retornar o primeiro nome de cada gerente

SELECT * FROM dGerente

INSERT INTO dGerente(nome_gerente, data_contratacao, salario)
VALUES
	('Joao', '10/01/2019', 3100)

SELECT
	nome_gerente,
	LEFT(nome_gerente, CHARINDEX(' ', nome_gerente) -1) AS 'Primeiro Nome'
FROM dGerente


CREATE OR ALTER FUNCTION fnPrimeiroNome(@nomeCompleto AS VARCHAR(MAX))
RETURNS VARCHAR(MAX) AS
BEGIN
	DECLARE @posicaoEspaso INT
	DECLARE @resposta VARCHAR(MAX)

	SET @posicaoEspaso = CHARINDEX(' ', @nomeCompleto)
	
	IF @posicaoEspaso = 0
		SET @resposta = @nomeCompleto
	ELSE
		SET @resposta = LEFT(@nomeCompleto, CHARINDEX(' ', @nomeCompleto) -1)

	RETURN @resposta
END

SELECT
	nome_gerente,
	[dbo].[fnPrimeiroNome](nome_gerente) AS 'Primeiro Nome'
FROM dGerente

