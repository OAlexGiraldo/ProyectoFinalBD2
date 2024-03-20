CREATE VIEW Vista_Niños_Por_Edad AS
SELECT edad, COUNT(*) AS cantidad_niños
FROM Niño
GROUP BY edad
ORDER BY edad;

select * from Vista_Niños_Por_Edad;
