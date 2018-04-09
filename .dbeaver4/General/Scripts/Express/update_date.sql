UPDATE `orders`
SET `delivery_interval_from` = CONCAT('2018-03-21 ', TIME(`delivery_interval_from`))
WHERE DATE(`delivery_interval_from`) = '2018-02-14%';

UPDATE `orders`
SET `delivery_interval_to` = CONCAT('2018-03-21 ', TIME(`delivery_interval_to`))
WHERE DATE(`delivery_interval_to`) = '2018-02-14%';

UPDATE `orders`
SET `delivery_date` = CONCAT('2018-03-21')
WHERE DATE(`delivery_date`) = '2018-02-14';