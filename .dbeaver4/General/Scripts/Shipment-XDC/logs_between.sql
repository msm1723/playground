SELECT id, created_at, logger_name, body, orders, packs
FROM view_exchange_log
WHERE created_at BETWEEN '2018-03-15 16:00:00' AND '2018-03-16 15:00:05' AND logger_name LIKE '%%'
ORDER BY id ASC;