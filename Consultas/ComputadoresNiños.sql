CREATE VIEW Vista_Computadores_Niños AS
SELECT c.marca, c.modelo, n.nombre AS nombre_niño
FROM Computadores c
INNER JOIN Niño n ON c.niño_id = n.id
ORDER BY c.marca;

select* from Vista_Computadores_Niños;