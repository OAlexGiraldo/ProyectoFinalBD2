DELIMITER //

CREATE FUNCTION obtener_edad_promedio() RETURNS DECIMAL(5,2)
BEGIN
    DECLARE total_niños INT;
    DECLARE suma_edades INT;
    DECLARE edad_promedio DECIMAL(5,2);

    SELECT COUNT(*) INTO total_niños FROM Niño;
    SELECT SUM(edad) INTO suma_edades FROM Niño;

    IF total_niños > 0 THEN
        SET edad_promedio = ROUND(suma_edades / total_niños, 2);
    ELSE
        SET edad_promedio = 0;
    END IF;

    RETURN edad_promedio;
END //

DELIMITER ;

SELECT obtener_edad_promedio();
