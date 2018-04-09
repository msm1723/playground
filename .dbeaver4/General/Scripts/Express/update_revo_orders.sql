UPDATE orders
SET order_nr = REPLACE(order_nr, 'RU1027', CONCAT('RU1027', '-' , CURDATE()))
WHERE order_nr LIKE 'RU1027';

UPDATE items
SET order_nr = REPLACE(order_nr, 'RU1027', CONCAT('RU1027', '-' , CURDATE()))
WHERE order_nr = 'RU1027';