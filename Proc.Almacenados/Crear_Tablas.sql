DELIMITER //

CREATE PROCEDURE crear_tablas()
BEGIN
    CREATE TABLE IF NOT EXISTS Niño (
        id INT AUTO_INCREMENT PRIMARY KEY,
        nombre VARCHAR(50),
        edad INT
    );

    CREATE TABLE IF NOT EXISTS Computadores (
        id INT AUTO_INCREMENT PRIMARY KEY,
        niño_id INT,
        FOREIGN KEY (niño_id) REFERENCES Niño(id),
        marca VARCHAR(50),
        modelo VARCHAR(50),
        sistema_operativo VARCHAR(50)
    );
END //

DELIMITER ;
CALL crear_tablas();
