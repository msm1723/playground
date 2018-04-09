SELECT
	z.id AS delivery, p.id AS pickup_id
FROM
	delivery_zone z
JOIN delivery_pickup p ON
	(
		p.fk_delivery_zone = z.id
	)
WHERE
	p.id = '2080';
