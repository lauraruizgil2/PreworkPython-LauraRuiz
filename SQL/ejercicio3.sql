/* 1. Crea una tabla llamada "Productos" con las columnas: "id" (entero, clave primaria), "nombre" (texto) y "precio" (numérico). */

CREATE TABLE IF NOT EXISTS productos(
	id SERIAL PRIMARY KEY,
	nombre VARCHAR (255) NOT NULL,
	precio INT
)

/* 2. Inserta al menos cinco registros en la tabla "Productos". */
INSERT INTO public.productos (nombre,precio)
VALUES ('zapatos', 15)

INSERT INTO public.productos (nombre,precio)
VALUES ('sudadera', 30)

INSERT INTO public.productos (nombre,precio)
VALUES ('bufanda', 6)

INSERT INTO public.productos (nombre,precio)
VALUES ('gorro', 10)

INSERT INTO public.productos (nombre,precio)
VALUES ('jeans', 29)

/* 3. Actualiza el precio de un producto en la tabla "Productos". */
UPDATE public.productos
SET precio=8
WHERE id=3 ;

/* 4. Elimina un producto de la tabla "Productos". */
DELETE FROM public.productos
WHERE id=3;

/* 5. Realiza una consulta que muestre los nombres de los usuarios junto con los nombres de los productos que han comprado (utiliza un INNER JOIN con la tabla "Productos") */
SELECT * FROM public.usuarios u
INNER JOIN public.productos p
ON u.id = p.id