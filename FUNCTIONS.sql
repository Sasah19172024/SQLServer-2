--O que � uma Function?

--1. Uma function � um conjunto de comandos que executam a��esretornavalor escalar. As functions ajudam a simplificarc�digo. Por exemplo,voc� tem um c�lculo complexo que aparece diversas vezes no seu c�digo, em vez de repetir v�riasvezes aquela s�rie de comandos, voc� pode simplesmente criar uma fun��o e reaproveit�-la sempre que precisar.

--O pr�prio SQL tem diversas fun��es prontas e at� agora, j� vimos v�rios exemplos de fun��es deste tipo, como fun��es dendata, texto, e assim vai.

--Podemos visualizar as fun��essistemapasta Programa��o > Fun��esFun��es do Sistema

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
			'(1� Semestre)'
		ELSE
			'(2� Semestre)'
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

