/*4. Voc� acabou de ser promovido e o seu papel ser� realizar um controle de qualidade sobre as 
lojas da empresa. 
A primeira informa��o que � passada a voc� � que o ano de 2008 foi bem complicado para a 
empresa, pois foi quando duas das principais lojas fecharam. O seu primeiro desafio � descobrir 
o nome dessas lojas que fecharam no ano de 2008, para que voc� possa entender o motivo e 
mapear planos de a��o para evitar que outras lojas importantes tomem o mesmo caminho.
O seu resultado dever� estar estruturado em uma frase, com a seguinte estrutura:
�As lojas fechadas no ano de 2008 foram: � + nome_das_lojas
Obs: utilize o comando PRINT (e n�o o SELECT!) para mostrar o resultado.*/DECLARE @nomedaslojas VARCHAR(1000) = ''SELECT	@nomedaslojas = @nomedaslojas + StoreDescription + ' ,'FROM DimStoreWHERE FORMAT(CloseDate, 'yyyy') = 2008 SELECT @nomedaslojasPRINT 'As lojas fechadas no ano de 2008 foram: ' + @nomedaslojas