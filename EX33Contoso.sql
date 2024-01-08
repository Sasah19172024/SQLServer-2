/*8. A tabela abaixo mostra a combinação entre Marca e Canal de Venda, para as marcas Contoso, 
Fabrikam e Litware. Crie um código SQL para chegar no mesmo resultado.*/

SELECT * FROM DimChannel
SELECT * FROM DimProduct

SELECT
	BrandName,
	ChannelName
FROM DimProduct CROSS JOIN DimChannel
WHERE BrandName IN ('Contoso', 'Litware',' Fabrikam')