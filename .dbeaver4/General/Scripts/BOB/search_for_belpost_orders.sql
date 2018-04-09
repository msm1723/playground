select so.order_nr
from sales_order so
inner join sales_order_item soi on so.id_sales_order = soi.fk_sales_order
where so.shipping_method = 'bobshipping_bel_post'
and soi.fk_delivery_status = 1;