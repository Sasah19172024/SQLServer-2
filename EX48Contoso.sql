/*3. Voc� � respons�vel por gerenciar um banco de dados onde s�o recebidos dados externos de 
usu�rios. Em resumo, esses dados s�o:
- Nome do usu�rio
- Data de nascimento
- Quantidade de pets que aquele usu�rio possui
Voc� precisar� criar um c�digo em SQL capaz de juntar as informa��es fornecidas por este 
usu�rio. Para simular estes dados, crie 3 vari�veis, chamadas: nome, data_nascimento e 
num_pets. Voc� dever� armazenar os valores �Andr�, �10/02/1998� e 2, respectivamente.
O resultado final a ser alcan�ado � mostrado no print abaixo:
Dica: voc� precisar� utilizar as fun��es CAST e FORMAT para chegar no resultado.*/DECLARE @NOME VARCHAR(50) = 'Andr�',		@data_nascimento VARCHAR(20) = '10/02/1998',		@num_pets INT = 2 SELECT 'Meu nome � ' + @NOME + ' Nasci em ' + @data_nascimento + ' E tenho ' + CAST(@num_pets AS VARCHAR(20))  + ' Gatos'		