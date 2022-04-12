-- Samantha Stroupe. 4/12/22. 
-- Write a script that creates and calls a stored procedure named InsertCategory. This procedure should attempt to insert a new category named “Winds” into the categories table. If the insert is successful,
-- the procedure should display this message: 1 row was inserted. If the update is unsuccessful, the
-- procedure should display this message: Row was not inserted - duplicate entry.
use samantha_guitar_shop; 
drop procedure if exists InsertCategory; 
delimiter // 
create procedure InsertCategory()
begin 
	declare duplicate_entry_insert_category int default false;
    declare continue handler for 1062
		set duplicate_entry_insert_category = true; 
	
    insert into categories
    values(5, "Winds");
    
    if duplicate_entry_insert_category = false then
		select "1 row was inserted" as message;
	else 
		select "Row was not inserted - duplicate entry" as message; 
	end if; 
end// 
delimiter ;
call InsertCategory();  
