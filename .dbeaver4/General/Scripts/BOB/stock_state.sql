SELECT *
FROM stock_state 
WHERE fk_stock_warehouse=1 AND qty>100 limit 100;