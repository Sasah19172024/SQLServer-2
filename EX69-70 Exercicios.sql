USE Exercicios

CREATE TABLE dCliente( ID_Cliente INT, Nome_Cliente VARCHAR(50), Data_de_Nascimento DATE)
SELECT * FROM dCliente

INSERT INTO dCliente(ID_Cliente, Nome_Cliente, Data_de_Nascimento)
VALUES	
	(1 , 'Andre Martins', 1989/02/12),
	(2 , 'Barbara Campos', 1992/05/07),
	(3 , 'CAROL Freitas', 1985/04/23),
	(4 , 'Diego Cardoso', 1994/10/11),
	(5 , 'Eduando pereira', 1988/11/09),
	(6 , 'Fabiana Silva', 1989/09/02),
	(7 , 'Gustavo Barb', 1993/06/27),
	(8 , 'Helen Viana', 1990/02/11)


CREATE TABLE dGerente (ID_Gerente INT,
 Nome_Gerente VARCHAR(50),
 Data_de_Contratacao DATETIME,
 Salario FLOAT)

INSERT INTO dGerente(ID_Gerente,Nome_Gerente,Data_de_Contratacao,Salario)
VALUES
	(1, 'Lucas Sampaio', 2015/03/21, 6700),
	(2, 'Mariana Padilha', 2011/01/10, 9900 ),
	(3, 'Nathalia Santos', 2018/10/03, 7200),
	(4, 'Otavio Costa', 2017/04/18, 11000)

 SELECT * FROM dGerente

CREATE TABLE fContratos(ID_Contrato int,
 Data_de_Assinatura DATETIME,
 ID_Cliente INT,
 ID_Gerente INT,
 Valor_do_Contrato FLOAT)

 INSERT INTO fContratos(ID_Contrato,Data_de_Assinatura,ID_Cliente,ID_Gerente,Valor_do_Contrato)
 VALUES
	(1, 2019/01/12, 8, 1, 23000),
	(2, 2019/02/10, 3, 2, 15500),
	(3, 2019/03/07, 7, 2, 6500),
	(4, 2019/03/15, 1, 3, 33000),
	(5, 2019/03/21, 5, 4, 11100),
	(6, 2019/03/23, 4, 2, 5500),
	(7, 2019/03/28, 9, 3, 55000),
	(8, 2019/04/04, 2, 1, 31000),
	(9, 2019/04/05, 10, 4, 3400),
	(10,2019/04/05, 6, 2, 9200)

SELECT * FROM fContratos