/*5. A ação de desconto da Asian Holiday Promotion foi uma das mais bem sucedidas da empresa. 
Agora, a Contoso quer entender um pouco melhor sobre o perfil dos clientes que compraram 
produtos com essa promoção.
Seu trabalho é criar uma query que retorne a lista de clientes que compraram nessa promoção.*/

SELECT * FROM DimPromotion
WHERE PromotionName = 'Asian Holiday Promotion'
SELECT TOP(1000)* FROM FactSales


SELECT 
	TOP(1000)*
FROM FactSales
WHERE PromotionKey = ANY(SELECT PromotionKey FROM DimPromotion WHERE PromotionName = 'Asian Holiday Promotion')

