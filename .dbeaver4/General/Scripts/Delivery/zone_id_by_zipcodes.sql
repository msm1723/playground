SELECT *
FROM delivery_zone
WHERE '347375' = ANY (zipcodes) AND fk_delivery_method = '67' AND is_active = 'true';