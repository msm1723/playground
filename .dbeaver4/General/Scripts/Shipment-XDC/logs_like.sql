SELECT id, created_at, logger_name, body, orders, packs
FROM view_exchange_log
WHERE created_at > '2018-01-16 16:45:00' AND logger_name LIKE 'boxberry.status_response'
ORDER BY id DESC;