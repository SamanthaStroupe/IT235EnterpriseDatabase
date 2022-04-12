-- Samantha Stroupe. 4/12/22.
-- Write a script that creates and calls a stored function named new_price that calculates a new price. which is the item_price-discount_amount in the order_Items table. This function should accept one
-- parameter for the item ID, and it should return the value of the new price for that item.
use  samantha_guitar_shop;
drop function if exists new_price; 
use delimiter //
create function new_price
(
	item_id_param int
)
returns decimal(9,2)
deterministic reads sql data
begin 
	declare discount_price decimal(9,2); 
    select item_price - discount_amount 
    into discount_price
    from order_items
    where item_id_param = item_id; 
    return discount_price;
end// 
delimiter ; 
 select item_id, item_price, 
		new_price(item_id) as discount_price
	from order_items;
