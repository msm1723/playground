select * from order_transaction
where order_id in (select id from orders where order_nr in (select DISTINCT order_nr from items where shipping_method = "lamoda_showroom_letnikovskaya_offline" ORDER BY id DESC));
