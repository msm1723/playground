SELECT o.order_nr, p.code, s.service, l.name
FROM orders AS o
INNER JOIN order_services AS s
ON o.id = s.order_id
LEFT JOIN service_level_type AS l
ON o.service_level_type_id = l.id
INNER JOIN partner AS p
ON o.partner_id = p.id;