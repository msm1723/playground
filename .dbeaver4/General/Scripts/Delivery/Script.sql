SELECT *
FROM delivery_pickup p
JOIN delivery_zone z
	ON (p.fk_delivery_zone = z.id)
JOIN delivery_method m
	ON (z.fk_delivery_method = m.id)
	WHERE m.code = 'pickupru';