/*4. Crie uma consulta � View vwProdutos, selecionando as colunas Marca, Cor, 
Quantidade_Vendida e tamb�m criando uma coluna extra de Rank para descobrir a posi��o de 
cada Marca/Cor. Voc� deve obter o resultado abaixo. Obs: Sua consulta deve ser filtrada para 
que seja mostrada apenas a marca Contoso*/

SELECT
   Marca, 
   Cor, 
   Quantidade_Vendida,
   RANK() OVER(ORDER BY Quantidade_Vendida DESC) AS RANK
FROM vwProdutos
WHERE Marca = 'Contoso'