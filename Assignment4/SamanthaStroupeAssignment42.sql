-- Samantha Stroupe. 3-20-22.
-- Use subqueries to answer the question: What products are sold that are above the average item price.
-- Include product name as well as the item_prices in your output.
-- **hint – first use a subquery to show the product names replacing a join as above and then add the subquery to control the prices

SELECT product_name
FROM products
where product_id in -- subquery using in. 
	(select product_id -- subquery where category id is in the table. 
    from order_items
where product_id in 
	(select product_id from order_items
    where item_price > (select avg(item_price) from order_items)))
    


