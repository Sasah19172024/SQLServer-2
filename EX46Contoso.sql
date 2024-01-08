/*Declare 4 variáveis inteiras. Atribua os seguintes valores a elas:
valor1 = 10
valor2 = 5
valor3 = 34
valor4 = 7
a) Crie uma nova variável para armazenar o resultado da soma entre valor1 e valor2. Chame
essa variável de soma.
b) Crie uma nova variável para armazenar o resultado da subtração entre valor3 e valor 4.
Chame essa variável de subtracao.
c) Crie uma nova variável para armazenar o resultado da multiplicação entre o valor 1 e o
valor4. Chame essa variável de multiplicacao.
d) Crie uma nova variável para armazenar o resultado da divisão do valor3 pelo valor4. Chame
essa variável de divisao. Obs: O resultado deverá estar em decimal, e não em inteiro.
e) Arredonde o resultado da letra d) para 2 casas decimais.*/

DECLARE @VALOR1 FLOAT = 10,
		@VALOR2 FLOAT = 5,
		@VALOR3 FLOAT = 34,
		@VALOR4 FLOAT = 7

DECLARE @V1 INT = @VALOR1 + @VALOR2
SELECT @V1
DECLARE @V2 INT = @VALOR3 - @VALOR4
SELECT @V2
DECLARE @V3 FLOAT = @VALOR1 * @VALOR4
SELECT @V3
DECLARE @V4 FLOAT = @VALOR3 / @VALOR4
SELECT ROUND(@V4, 2)