DROP DATABASE AlugaFacil
CREATE DATABASE AlugaFacil
USE AlugaFacil

CREATE TABLE Carro(
	id_carro INT,
	placa VARCHAR(100) NOT NULL,
	modelo VARCHAR(100) NOT NULL,
	tipo VARCHAR(100) NOT NULL,
	valor FLOAT NOT NULL,
	CONSTRAINT carro_id_carro_pk PRIMARY KEY(id_carro)
)

INSERT INTO Carro(id_carro, placa, modelo, tipo, valor) VALUES
	(1, 'CRU-1111', 'Chevrolet Cruze', 'Sedan', 140000),
	(2, 'ARG-2222', 'Fiat Argo', 'Hatch', 80000),
	(3, 'COR-3333', 'Toyota Corolla', 'Sedan', 170000),
	(4, 'TIG-4444', 'Caoa Chery Tiggo', 'SUV', 190000)

--4
CREATE OR ALTER PROCEDURE CADASTRACARRO
AS
BEGIN
	INSERT INTO Carro(id_carro, placa, modelo, tipo, valor) VALUES
		(5,'GOL-5555', 'Volkswagen Gol', 'Hatch', 80000)
END

EXECUTE CADASTRACARRO

--5
CREATE OR ALTER PROCEDURE ALTERA_VALOR(@ID INT, @NOVO_VALOR FLOAT)
AS
BEGIN
	BEGIN TRANSACTION

		UPDATE carro
		SET valor = @NOVO_VALOR
		WHERE id_carro = @ID

	COMMIT 
END

EXECUTE ALTERA_VALOR 1,20000

SELECT * FROM Carro


--6
CREATE OR ALTER PROCEDURE DELETA(@ID INT)
AS
BEGIN
	BEGIN TRANSACTION
		DELETE FROM CARRO
		WHERE id_carro = @ID
	COMMIT
END

EXECUTE DELETA 5