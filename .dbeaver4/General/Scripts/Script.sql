use express;

insert into location (latitude, longitude, accuracy, user_id, device_id, created_at, updated_at)
SELECT latitude, longitude, accuracy, user_id, device_id, NOW(), NOW() FROM location WHERE id=1;
