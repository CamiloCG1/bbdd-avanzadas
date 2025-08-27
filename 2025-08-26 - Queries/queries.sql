SELECT * FROM clase.usuario;

SELECT nombre, celular FROM clase.usuario;

SELECT nombre, celular FROM clase.usuario
WHERE celular = "3001234567";

SELECT tema FROM clase.registro_tutoria
WHERE fecha >= "2025-08-26";

SELECT tema FROM clase.registro_tutoria
ORDER BY tema ASC;

SELECT tema FROM clase.registro_tutoria
LIMIT 5;

SELECT tema FROM clase.registro_tutoria
WHERE tema LIKE "%ingenieria%";

SELECT COUNT(*) FROM clase.registro_tutoria;

SELECT tema, COUNT(tema) AS total_tutorias_por_tema FROM clase.registro_tutoria
GROUP BY tema;