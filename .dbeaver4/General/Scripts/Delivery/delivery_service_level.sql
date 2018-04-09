SELECT id, fk_delivery_service_level_type
FROM delivery_service_level
WHERE free_delivery_threshold_net_percent = 0 AND is_deleted = false;