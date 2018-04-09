SELECT
	z.id
FROM
	delivery_zone z
JOIN delivery_pickup p ON
	(
		p.fk_delivery_zone = z.id
	)
WHERE
	p.external_id = 'X505';
