SELECT DISTINCT 
	',[' + TRIM(BrandName) + ']'
FROM DimProduct

SELECT DISTINCT
	',[' + TRIM(DepartmentName) + ']' FROM DimEmployee

SELECT DISTINCT
	',' + QUOTENAME(TRIM(DepartmentName))  FROM DimEmployee
	ORDER BY ',' + QUOTENAME(TRIM(DepartmentName))