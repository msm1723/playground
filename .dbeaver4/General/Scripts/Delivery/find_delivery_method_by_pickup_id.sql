SELECT code
FROM delivery_method
WHERE id in (
	SELECT fk_delivery_method
	FROM delivery_zone
	WHERE id in (
		SELECT fk_delivery_zone
		FROM delivery_pickup
		WHERE id='39' ) );
