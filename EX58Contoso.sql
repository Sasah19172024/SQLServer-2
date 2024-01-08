/*3. Será necessário criar uma categorização de cada loja da empresa considerando a quantidade de 
funcionários de cada uma. A lógica a ser seguida será a lógica abaixo:
EmployeeCount >= 50; 'Acima de 50 funcionários'
EmployeeCount >= 40; 'Entre 40 e 50 funcionários'
EmployeeCount >= 30; 'Entre 30 e 40 funcionários'
EmployeeCount >= 20; 'Entre 20 e 30 funcionários'
EmployeeCount >= 40; 'Entre 10 e 20 funcionários'
Caso contrário: 'Abaixo de 10 funcionários'
Faça uma consulta à tabela DimStore que retorne as seguintes informações: StoreName, 
EmployeeCount e a coluna de categoria, seguindo a regra acima*/

SELECT 
	StoreName,
	EmployeeCount,
	CASE 
	 WHEN EmployeeCount >= 50 THEN 'Acima de 50 funcionários'
	 WHEN EmployeeCount >= 40 THEN 'Acima de 40 funcionários'
	 WHEN EmployeeCount >= 30 THEN 'Acima de 30 funcionários'
	 WHEN EmployeeCount >= 20 THEN 'Acima de 20 funcionários'
	 ELSE 'De 0 A 20 funcionarios'
	 END 
FROM DimStore