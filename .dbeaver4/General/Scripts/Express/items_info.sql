SELECT i.order_nr, i.barcode, p.code, i.contract_type
FROM items i INNER JOIN partner p
ON i.partner_id = p.id;