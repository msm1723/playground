SELECT id, logger_name, body, orders, packs, created_at
FROM view_exchange_log
WHERE created_at BETWEEN '2018-01-23 10:39:00' AND '2018-01-23 10:45:00' AND logger_name LIKE '%boxberry%'
union
SELECT id, logger_name, body, orders, packs, created_at
FROM view_exchange_log
WHERE created_at BETWEEN '2018-01-23 10:39:00' AND '2018-01-23 10:45:00' AND logger_name LIKE '%bob%'
union
SELECT id, logger_name, body, orders, packs, created_at
FROM view_exchange_log
WHERE created_at BETWEEN '2018-01-23 10:39:00' AND '2018-01-23 10:45:00' AND logger_name LIKE '%Bob%'
ORDER BY id ASC;
