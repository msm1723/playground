SELECT i.barcode AS item_barcode, i.sku, p.code AS partner, i.contract_type, s.name AS item_status,
c.barcode AS container, s2.name AS container_status, o.order_nr, o.source, o.delivery_status, o.system_id, o.webshop_id
FROM items AS i 
INNER JOIN orders o
ON i.order_id = o.id
INNER JOIN partner AS p
ON i.partner_id = p.id
INNER JOIN sm_states AS s
ON i.status = s.id
INNER JOIN container AS c
ON i.parent_id = c.id
INNER JOIN sm_states AS s2
ON c.status = s2.id;