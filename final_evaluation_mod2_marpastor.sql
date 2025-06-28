-- *********************************************
-- Ejercicio Evaluacion Final MOD2
-- *********************************************

-- Usando la BBDD Sakila
USE Sakila;

--  1. Selecciona todos los nombres de las películas sin que aparezcan duplicados

SELECT DISTINCT title -- selecciona la columna con el nombre de las peliculas una vez con 'distinct'
FROM film; -- de la tabla 'film'

-- 2. Muestra los nombres de todas las películas que tengan una clasificación de "PG-13"

SELECT f.title, f.rating -- seleccina las columnas con el nombre y la clasificación de las películas
FROM film AS f -- llama la tabla que contiene las columnas
WHERE rating = 'PG-13'; -- filtra la información requerida en el ejercicio