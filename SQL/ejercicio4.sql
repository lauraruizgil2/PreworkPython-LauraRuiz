/* 1. Crea una tabla llamada "Pedidos" con las columnas: "id" (entero, clave primaria), "id_usuario" (entero, clave foránea de la tabla "Usuarios") y "id_producto" (entero, clave foránea de la tabla "Productos"). */
CREATE TABLE IF NOT EXISTS pedidos(
	id SERIAL PRIMARY KEY,
	usuario_id INT NOT NULL,
	CONSTRAINT FK_usuario_id FOREIGN KEY (usuario_id) REFERENCES usuarios (id)
)

CREATE TABLE IF NOT EXISTS pedidos(
	id SERIAL PRIMARY KEY,
	producto_id INT NOT NULL,
	CONSTRAINT FK_producto_id FOREIGN KEY (producto_id) REFERENCES productos (id)
)
/* 2. Inserta al menos tres registros en la tabla "Pedidos" que relacionen usuarios con productos. */
""" he añadido dos usuarios mas, Fran y Lara"""

INSERT INTO public.pedidos (usuario_id, producto_id)
VALUES (1, 4)

INSERT INTO public.pedidos (usuario_id, producto_id)
VALUES (3, 1)

INSERT INTO public.pedidos (usuario_id, producto_id)
VALUES (4, 2)

/* 3. Realiza una consulta que muestre los nombres de los usuarios y los nombres de los productos que han comprado, incluidos aquellos que no han realizado ningún pedido (utiliza LEFT JOIN y COALESCE). */
""" he añadido dos usuarios más, para tener 5 en total, estos dos ultimos Ander y Andrea no tienen un pedido asignado """
SELECT * FROM public.usuarios u
LEFT JOIN public.productos p
ON u.id = p.id

/* 4. Realiza una consulta que muestre los nombres de los usuarios que han realizado un pedido, pero también los que no han realizado ningún pedido (utiliza LEFT JOIN). */
SELECT * FROM public.usuarios u
LEFT JOIN public.pedidos p
ON u.id = p.usuario_id

/* 5. Agrega una nueva columna llamada "cantidad" a la tabla "Pedidos" y actualiza los registros existentes con un valor (utiliza ALTER TABLE y UPDATE) */
ALTER TABLE public.pedidos
ADD cantidad INT;

UPDATE public.pedidos
SET cantidad = 1
WHERE cantidad IS NULL
