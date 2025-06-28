-- *********************************************
-- Ejercicio Evaluacion Final MOD2
-- *********************************************

-- Usando la BBDD Sakila
USE Sakila;

-- 1. Selecciona todos los nombres de las películas sin que aparezcan duplicados

SELECT DISTINCT f.title -- selecciona la columna con el nombre de las peliculas una vez con 'distinct'
FROM film AS f; -- de la tabla 'film'

-- 2. Muestra los nombres de todas las películas que tengan una clasificación de "PG-13"

SELECT f.title, f.rating -- seleccina las columnas con el nombre y la clasificación de las películas
FROM film AS f -- llama la tabla que contiene las columnas
WHERE rating = 'PG-13'; -- filtra la información requerida en el ejercicio

-- 3. Encuentra el título y la descripción de todas las películas que contengan la palabra "amazing" en su descripción

SELECT f.title, f.description -- selecciona las columnas de nombre y descripción
FROM film AS f -- de la tabla 'film' donde estan las columnas
WHERE f.description LIKE '%amazing%'; -- filtra las descripciones que contiene la palabra 'amazing' y lo que rodee la palabra

-- 4. Encuentra el título de todas las películas que tengan una duración mayor a 120 minutos

SELECT f.title, f.length -- seleccion el titulo y la duracion para comprobar resultados
FROM film AS f -- de la tabla film
WHERE f.length > 120 -- filtra las peliculas que tengan una duracion mayor de 120
ORDER BY f.length;

-- 5. Recupera los nombres de todos los actores

SELECT a.first_name, a.last_name -- selecciona las columnas del nombre y apellido de los actores
FROM actor AS a; -- en la tabla 'actor'

SELECT CONCAT(first_name, ' ', last_name) AS nombre_actores -- selecciona los datos de las columnas nombre y apellidos, y las concatena en una sola columna
FROM actor;
