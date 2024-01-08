CREATE DATABASE AlugaFacil

CREATE TABLE Cliente( 
	data_locacao DATE NOT NULL,
	data_devolucao DATE NOT NULL,
	id_carro INT NOT NULL,
	id_cliente INT NOT NULL,
	CONSTRAINT Locacoes_id_locacao_PK PRIMARY KEY(id_locacao),
	CONSTRAINT Locacoes_id_carro_FK FOREIGN KEY(id_carro) REFERENCES Carro(id_carro),
	CONSTRAINT Locacoes_id_cliente_FK FOREIGN KEY(id_cliente) REFERENCES Cliente(id_cliente),
	)

SELECT * FROM Carro
SELECT * FROM Locacoes
SELECT * FROM Cliente


DROP TABLE Cliente
DROP TABLE Locacoes
DROP TABLE Carro