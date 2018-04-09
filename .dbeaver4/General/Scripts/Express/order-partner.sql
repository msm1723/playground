SELECT o.order_nr, p.code
FROM orders o INNER JOIN partner p
ON o.partner_id = p.id;