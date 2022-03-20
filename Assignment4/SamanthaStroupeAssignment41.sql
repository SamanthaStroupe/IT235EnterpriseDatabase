-- Samantha Stroupe. 3-10-22. 

SELECT DISTINCT category_name
FROM categories
where category_id in -- subquery using in. 
	(select distinct category_id -- subquery where category id is in the table. 
    from products)
ORDER BY category_name;