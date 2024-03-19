DELIMITER //

CREATE PROCEDURE insertar_registros()
BEGIN
    DECLARE contador INT DEFAULT 1;
    DECLARE niño_id INT;

    WHILE contador <= 10 DO
        INSERT INTO Niño (nombre, edad) VALUES (CONCAT('Niño ', contador), FLOOR(RAND() * 12) + 1);
        SET niño_id = LAST_INSERT_ID();

        INSERT INTO Computadores (niño_id, marca, modelo, sistema_operativo) VALUES 
            (niño_id, CONCAT('Marca ', contador), CONCAT('Modelo ', contador), 'Windows');
        SET contador = contador + 1;
    END WHILE;
END //

DELIMITER ;

CALL insertar_registros();