CREATE DATABASE AlugaFacil

CREATE TABLE Cliente( 	id_cliente INT IDENTITY(1,1),	nome_cliente VARCHAR(50) NOT NULL,	cnh VARCHAR NOT NULL, 	cartao INT NOT NULL,	CONSTRAINT Cliente_id_cliente_PK PRIMARY KEY(id_cliente),	CONSTRAINT Cliente_cnh_UQ UNIQUE(cnh)	)CREATE TABLE Carro(	id_carro INT IDENTITY(1,1),	placa VARCHAR(50) NOT NULL,	modelo VARCHAR(50) NOT NULL,	tipo VARCHAR(50) NOT NULL,	CONSTRAINT Carro_id_carro_PK PRIMARY KEY(id_carro),	CONSTRAINT Carro_tipo_CK CHECK(tipo IN ('Hatch', 'Sedan', 'SUV')),	CONSTRAINT Carro_placa_UQ UNIQUE(placa)	)CREATE TABLE Locacoes(	id_locacao INT IDENTITY(1,1),
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
