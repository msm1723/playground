SELECT id
FROM delivery_pickup
WHERE fk_delivery_zone = (
	SELECT id
	FROM delivery_zone
	WHERE fk_delivery_method = (
		SELECT id
		FROM delivery_method
		WHERE code = 'lamoda_showroom_znamenka' 
		)
	);