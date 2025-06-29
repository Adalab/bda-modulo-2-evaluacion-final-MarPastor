-- *********************************************
-- Ejercicio Evaluacion Final MOD2
-- *********************************************

-- Usando la BBDD Sakila
USE Sakila;

-- 1. Selecciona todos los nombres de las películas sin que aparezcan duplicados

SELECT DISTINCT f.title -- selecciona la columna con el nombre de las peliculas una vez con 'distinct'
FROM film AS f; -- de la tabla 'film' con un alias 'f'

-- 2. Muestra los nombres de todas las películas que tengan una clasificación de "PG-13"

SELECT f.title, f.rating -- seleccina las columnas con el nombre y la clasificación de las películas
FROM film AS f -- llama la tabla que contiene las columnas con un alias 'f'
WHERE rating = 'PG-13'; -- filtra la información requerida en el ejercicio

-- 3. Encuentra el título y la descripción de todas las películas que contengan la palabra "amazing" en su descripción

SELECT f.title, f.description -- selecciona las columnas de nombre y descripción
FROM film AS f -- de la tabla 'film' con un alias 'f'
WHERE f.description LIKE '%amazing%'; -- filtra las descripciones que contiene la palabra 'amazing' y lo que rodee la palabra

-- 4. Encuentra el título de todas las películas que tengan una duración mayor a 120 minutos

SELECT f.title, f.length -- seleccion el titulo y la duración para comprobar resultados
FROM film AS f -- de la tabla 'film' con un alias 'f'
WHERE f.length > 120 -- filtra las peliculas que tengan una duración mayor de 120
ORDER BY f.length;

-- 5. Recupera los nombres de todos los actores

SELECT a.first_name, a.last_name -- selecciona las columnas del nombre y apellido de los actores
FROM actor AS a; -- en la tabla 'actor' con alias 'a'

SELECT a.first_name -- selecciona la columna del nombre de los actores
FROM actor AS a; -- en la tabla 'actor' con un alias 'a'

SELECT CONCAT(first_name, ' ', last_name) AS nombre_actores -- selecciona los datos de las columnas nombre y apellidos, y las concatena en una sola columna
FROM actor;

-- 6. Encuentra el nombre y apellido de los actores que tengan "Gibson" en su apellido

SELECT a.first_name, a.last_name -- selecciona las columnas de nombre y apellidos
FROM actor AS a -- de la tabla 'actor' con un alias 'a'
WHERE a.last_name LIKE '%Gibson%'; -- filtra la consulta con nombre y apellido de actores que contengan 'Gibson' en la columna 'last_name'

-- 7. Encuentra los nombres de los actores que tengan un actor_id entre 10 y 20

SELECT a.first_name, a.actor_id -- selecciona la columna del nombre de los actores y el id de los actores para comprobar resultados
FROM actor AS a -- de la tabla 'actor' con alias 'a'
WHERE a.actor_id BETWEEN 10 AND 20 -- filtra los id de los actores entre 10 y 20, incluyéndolos
ORDER BY a.actor_id; -- ordena por id de mayor a menor

-- 8. Encuentra el título de las películas en la tabla film que no sean ni "R" ni "PG-13" en cuanto a su clasificación

SELECT f.title, f.rating -- selecciona titulo de las columnas del titulo y clasificación para verificación
FROM film AS f -- de la tabla 'film' con alias 'f'
WHERE f.rating NOT IN ('R', 'PG-13') -- filtra la consulta para que no muestre peliculas con clasificación 'R' o "PG-13'
ORDER BY f.rating; -- ordena el rating para mejor visibilización

-- 9. Encuentra la cantidad total de películas en cada clasificación de la tabla film y muestra la clasificación junto con el recuento

SELECT f.rating, COUNT(DISTINCT f.title) AS recuento -- selecciona la clasificación de las peliculas y cuentas las peliculas dentro de esa categoria, guarda los datos en una columna 'recuento'
FROM film AS f -- de la tabla 'film' con alias 'f'
GROUP BY f.rating; 