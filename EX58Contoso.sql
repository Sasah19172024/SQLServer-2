/*3. Ser� necess�rio criar uma categoriza��o de cada loja da empresa considerando a quantidade de 
funcion�rios de cada uma. A l�gica a ser seguida ser� a l�gica abaixo:
EmployeeCount >= 50; 'Acima de 50 funcion�rios'
EmployeeCount >= 40; 'Entre 40 e 50 funcion�rios'
EmployeeCount >= 30; 'Entre 30 e 40 funcion�rios'
EmployeeCount >= 20; 'Entre 20 e 30 funcion�rios'
EmployeeCount >= 40; 'Entre 10 e 20 funcion�rios'
Caso contr�rio: 'Abaixo de 10 funcion�rios'
Fa�a uma consulta � tabela DimStore que retorne as seguintes informa��es: StoreName, 
EmployeeCount e a coluna de categoria, seguindo a regra acima*/

SELECT 
	StoreName,
	EmployeeCount,
	CASE 
	 WHEN EmployeeCount >= 50 THEN 'Acima de 50 funcion�rios'
	 WHEN EmployeeCount >= 40 THEN 'Acima de 40 funcion�rios'
	 WHEN EmployeeCount >= 30 THEN 'Acima de 30 funcion�rios'
	 WHEN EmployeeCount >= 20 THEN 'Acima de 20 funcion�rios'
	 ELSE 'De 0 A 20 funcionarios'
	 END 
FROM DimStore