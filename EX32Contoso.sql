--7. Algumas subcategorias não possuem nenhum exemplar de produto. Identifique que 
--subcategorias são essas.

--dimproduct
--dimproductsubcategory

SELECT 
	ProductName,
	ProductSubcategoryName
FROM DimProduct
RIGHT JOIN DimProductSubcategory
 ON DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey
 WHERE ProductName IS NULL