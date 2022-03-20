-- Samantha Stroupe. 3-20-22.
-- Write a SELECT statement that returns the following information from the email_address column in the customers table.
-- a) Email address
-- b) The length of the email address with the alias “Length”
-- c) The location of the “@” sign with the alias “@”
-- d) The email address username (before the “@”) with the alias “Username”
-- e) The email address domain (after the “@”) with the alias “Domain

select email_address,
length(email_address) as "Length", 
locate('@', email_address) as "@",
substring_index(email_address,'@', 1) as "Username",
substring_index(email_address, '@', -1) as "Domain"
from customers; 
