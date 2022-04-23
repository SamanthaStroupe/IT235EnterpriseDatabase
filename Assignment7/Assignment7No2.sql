-- Samantha Stroupe. 4/23/22. 
-- 
use samantha_guitar_shop; 
set global event_scheduler = on;
delimiter // 

create event insertRow
on schedule at now()
do begin
	insert into categories
    values(9, "Windy");
end// 

show events in samantha_guitar_shop;
drop event insertRow; 