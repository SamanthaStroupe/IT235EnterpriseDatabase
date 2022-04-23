-- Samantha Stroupe. 4/23/22. 

delimiter / /
drop procedure if exists deleteCustomer; 
create procedure deleteCustomer()
begin

declare customerId int; 
DELETE FROM Customers
WHERE customerId = customer_id;

end // 

