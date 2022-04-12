-- Samantha Stroupe. 4/12/22.
-- Write a script that creates and calls a stored procedure named ProductCount. This stored procedure should declare a variable and set it to the count of all products in the Products table. If the count is greater than or
-- equal to 18, the stored procedure should display a message that says, “The number of products is greater than
-- or equal to 18”. Otherwise, it should say, “The number of products is less than 18”

use samantha_guitar_shop; 
drop procedure if exists ProductCount;
delimiter //
create procedure ProductCount()
begin 
	declare productCount int;
    
    select count(*) into productCount from products;
    
    if productCount >= 18 then 
		select "The number of products is greater than or equal to 18" as message; 
	else 
		select "The number of products is less than 18" as message; 
	end if;
end// 
delimiter ;
call productCount();  

    
    
    