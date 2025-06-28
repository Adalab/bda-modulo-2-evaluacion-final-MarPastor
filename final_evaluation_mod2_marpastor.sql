-- *********************************************
-- Ejercicio Evaluacion Final MOD2
-- *********************************************

-- Usando la BBDD Sakila
USE Sakila;

--  1. Selecciona todos los nombres de las películas sin que aparezcan duplicados

SELECT DISTINCT title
FROM film;

-- 2. Muestra los nombres de todas las películas que tengan una clasificación de "PG-13"

