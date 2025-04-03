-- --Consultas
-- 1. Encuentra el cliente que ha realizado la mayor cantidad de alquileres en los últimos 6 meses.
SELECT c.nombre, c.apellidos, COUNT(a.id_cliente) AS Alquiler_Clientes
FROM cliente c
JOIN alquiler a ON c.id_cliente = a.id_cliente
WHERE MONTH(a.fecha_alquiler) - CURDATE() < 6
GROUP BY c.nombre, c.apellidos
ORDER BY Alquiler_Clientes DESC
LIMIT 1;
-- 2. Lista las cinco películas más alquiladas durante el último año.
SELECT 
-- 3. Obtén el total de ingresos y la cantidad de alquileres realizados por cada categoría de película.
SELECT c.nombre AS Categoria, COUNT(a.id_alquiler) AS Alquileres, SUM(pa.total) AS Ingresos
FROM categoria c
JOIN pelicula_actor pc ON c.id_categoria = pc.id_categoria
JOIN pelicula p ON pc.id_pelicula = p.id_pelicula
JOIN inventario i ON p.id_pelicula = i.id_pelicula
JOIN alquiler a ON i.id_inventario = a.id_inventario
JOIN pago pa ON a.id_alquiler = pa.id_alquiler
GROUP BY c.nombre;
-- 4. Calcula el número total de clientes que han realizado alquileres por cada idioma disponible en un mes específico.
SELECT COUNT(a.id_cliente) AS Clientes, id.nombre
FROM idioma id
JOIN pelicula p ON id.id_idioma = p.id_idioma
JOIN inventario i ON p.id_pelicula = i.id_pelicula
JOIN alquiler a ON i.id_inventario = a.id_inventario
JOIN cliente c ON a.id_cliente = c.id_cliente
GROUP BY id.nombre;
-- 5. Encuentra a los clientes que han alquilado todas las películas de una misma categoría.
