-- Samantha Stroupe. 4/1/22.
-- product name, item price, and quantity for each item ordered

create view items_ordered as 
	select product_name, item_price, quantity
    from products p
		inner join order_items oi on p.product_id = oi.product_id
		