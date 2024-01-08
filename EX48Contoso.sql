/*3. Você é responsável por gerenciar um banco de dados onde são recebidos dados externos de 
usuários. Em resumo, esses dados são:
- Nome do usuário
- Data de nascimento
- Quantidade de pets que aquele usuário possui
Você precisará criar um código em SQL capaz de juntar as informações fornecidas por este 
usuário. Para simular estes dados, crie 3 variáveis, chamadas: nome, data_nascimento e 
num_pets. Você deverá armazenar os valores ‘André’, ‘10/02/1998’ e 2, respectivamente.
O resultado final a ser alcançado é mostrado no print abaixo:
Dica: você precisará utilizar as funções CAST e FORMAT para chegar no resultado.*/DECLARE @NOME VARCHAR(50) = 'André',		@data_nascimento VARCHAR(20) = '10/02/1998',		@num_pets INT = 2 SELECT 'Meu nome è ' + @NOME + ' Nasci em ' + @data_nascimento + ' E tenho ' + CAST(@num_pets AS VARCHAR(20))  + ' Gatos'		