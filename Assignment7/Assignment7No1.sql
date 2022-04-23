-- Samantha Stroupe. 4/23/23.
-- Create a trigger named products_before_update that checks the new value for the list_price column of the
-- products table. This trigger should raise an appropriate error if the UnitPrice is greater than 1200 or less than
-- 100. (15 points) 

use samantha_guitar_shop; 
drop trigger if exists products_before_update; 
delimiter //
create trigger products_before_update
	before update on products
	for each row
begin 
	
	
    if new.list_price > 1200 or new.list_price <100 then 
		signal SQLSTATE 'HY000'
			set message_text = 'Price is too high or low';
	end if; 
end//

delimiter ; 

update products 
set list_price =  1300
where product_id = 1;   
    