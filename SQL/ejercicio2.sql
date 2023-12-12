/* 1. Crea una base de datos llamada "MiBaseDeDatos". */
Databases - create - database ...
/*2. Crea una tabla llamada "Usuarios" con las columnas: "id" (entero, clave primaria), "nombre" (texto) y "edad" (entero). */
CREATE TABLE IF NOT EXISTS usuarios (
	id SERIAL PRIMARY KEY,
	nombre VARCHAR (255) NOT NULL, 
	edad INT 
)
/* 3. Inserta dos registros en la tabla "Usuarios". */
INSERT INTO public.usuarios (nombre,edad)
VALUES ('Sara', 25)

INSERT INTO public.usuarios (nombre,edad)
VALUES ('Jon', 22)

/* 4. Actualiza la edad de un usuario en la tabla "Usuarios". */
UPDATE public.usuarios
SET edad = 18
WHERE id = 2;

/* 5. Elimina un usuario de la tabla "Usuarios". */
DELETE FROM public.usuarios
WHERE id = 2

/* Nivel de dificultad: Moderado */
/*1. Crea una tabla llamada "Ciudades" con las columnas: "id" (entero, clave primaria), "nombre" (texto) y "pais" (texto). */
CREATE TABLE IF NOT EXISTS ciudades(
	id SERIAL PRIMARY KEY,
	nombre VARCHAR (255) NOT NULL, 
	pais VARCHAR (255) NOT NULL
)
/* 2. Inserta al menos tres registros en la tabla "Ciudades". */
INSERT INTO public.ciudades (nombre, pais)
VALUES ('Bilbao', 'España')

INSERT INTO public.ciudades (nombre, pais)
VALUES ('Sevilla', 'España')

INSERT INTO public.ciudades (nombre, pais)
VALUES ('Paris', 'Francia')

/* 3. Crea una foreign key en la tabla "Usuarios" que se relacione con la columna "id" de la tabla "Ciudades". */
CREATE TABLE IF NOT EXISTS usuarios(
	id SERIAL PRIMARY KEY,
	nombre VARCHAR (255) NOT NULL, 
	edad INT NOT NULL, 
	ciudades_id INT NOT NULL,
	CONSTRAINT KF_ciudad_id FOREIGN KEY (ciudad_id) REFERENCES ciudades (id)
)

/* 4. Realiza una consulta que muestre los nombres de los usuarios junto con el nombre de su ciudad y país (utiliza un LEFT JOIN). */
SELECT * FROM public.usuarios u
LEFT JOIN public.ciudades c
ON u.id = c.id

/* 5. Realiza una consulta que muestre solo los usuarios que tienen una ciudad asociada (utiliza un INNER JOIN). */
SELECT * FROM public.usuarios u
INNER JOIN public.ciudades c
ON u.id=c.id
