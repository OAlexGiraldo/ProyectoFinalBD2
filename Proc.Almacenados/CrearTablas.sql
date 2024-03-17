DELIMITER 
CREATE PROCEDURE `Crear_Tablas`() 
BEGIN 
CREATE TABLE Ninos (
    NinoID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(50),
    Edad INT
    );
-- Crear tabla 2: Juguetes
CREATE TABLE Juguetes (
    JugueteID INT AUTO_INCREMENT PRIMARY KEY,
    NinoID INT,
    Nombre VARCHAR(50),
    Categoria VARCHAR(50),
    FOREIGN KEY (NinoID) REFERENCES Ninos(NinoID)
);
END
DELIMITER ;
CALL Crear_tablas() ;