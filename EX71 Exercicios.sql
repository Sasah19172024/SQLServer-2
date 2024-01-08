/*4. Novos dados deverão ser adicionados nas tabelas dCliente, dGerente e fContratos. Fique livre 
para adicionar uma nova linha em cada tabela contendo, respectivamente, 
(1) um novo cliente (id cliente, nome e data de nascimento)
(2) um novo gerente (id gerente, nome, data de contratação e salário)
(3) um novo contrato (id, data assinatura, id cliente, id gerente, valor do contrato)*/

INSERT INTO dCliente(ID_Cliente, Nome_Cliente, Data_de_Nascimento)
VALUES
	(9, 'Sarah Vitoria', '2005/01/05')
SELECT * FROM dCliente

INSERT INTO dGerente(ID_Gerente,Nome_Gerente,Data_de_Contratacao,Salario)
VALUES
	(66, 'Marcos Vinicius', 2023/10/11, 7000)
SELECT * FROM dGerente

UPDATE dGerente
SET ID_Gerente = 5
WHERE Nome_Gerente = 'Marcos Vinicius'

INSERT INTO fContratos(ID_Contrato,Data_de_Assinatura,ID_Cliente,ID_Gerente,Valor_do_Contrato)
 VALUES
	(11, 1994/03/04, 6, 4, 7000)
SELECT * FROM fContratos


