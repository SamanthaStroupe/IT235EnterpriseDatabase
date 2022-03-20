-- Samantha Stroupe. 2-20-22
-- Write a SELECT statement that returns these columns from the Products table:
-- a) The list_price column
-- b) A column that uses the FORMAT function to return the list_price column with 1 digit to the right of the decimal point
-- c) A column that uses the CONVERT function to return the list_price column as a signed integer
-- d) A column that uses the CAST function to return the list_price column as a signed integer 

select list_price, 
format(list_price, 1) as "Decimal List Price", -- formated listprice with one decimal. 
convert(list_price, signed) as "ConvertSigned List Price", -- convert listprice to signed 
cast(list_price as signed) as "CastSigned List Price" -- cast listprice as signed
from products;
