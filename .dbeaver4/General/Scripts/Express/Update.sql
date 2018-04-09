UPDATE items i
INNER JOIN partner p ON i.partner_id = p.id
SET i.contract_type = 'purchasing'
WHERE order_nr = 'RU5231';