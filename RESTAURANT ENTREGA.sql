Select * from menu_items;

-- Encontrar el número de artículos en el menú.
SELECT COUNT (*) from menu_items;

-- ¿Cuál es el artículo menos caro y el más caro en el menú?
SELECT MIN (price) from menu_items;
SELECT MAX (price) from menu_items;

-- ¿Cuántos platos americanos hay en el menú?
SELECT COUNT (*) category FROM menu_items
WHERE category LIKE '%American%';


-- ¿Cuál es el precio promedio de los platos?
SELECT AVG (price) FROM menu_items;



Select * from order_details;

-- ¿Cuántos pedidos únicos se realizaron en total?
SELECT COUNT (*) order_details_id FROM order_details;

-- ¿Cuáles son los 5 pedidos que tuvieron el mayor número de artículos?
SELECT order_id, COUNT (item_id)
FROM order_details
GROUP BY order_id
ORDER BY COUNT (item_id) DESC
LIMIT 5;

-- ¿Cuándo se realizó el primer pedido y el último pedido?
SELECT order_date, COUNT (item_id)
FROM order_details
GROUP BY order_date
ORDER BY order_date ASC;

SELECT order_date, COUNT (item_id)
FROM order_details
GROUP BY order_date
ORDER BY order_date DESC;

-- ¿Cuántos pedidos se hicieron entre el '2023-01-01' y el '2023-01-05'?
SELECT COUNT (*) FROM order_details
WHERE order_date BETWEEN '2023-01-01'AND '2023-01-05';





