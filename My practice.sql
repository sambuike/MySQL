use sql_store;

SELECT * 
FROM customers
-- WHERE customer_id=1
order by first_name;

select 
	first_name,
    last_name,
    points,
    (points+10)*100 as discount_factor
from customers;

-- Exercise
use sql_inventory;
select 
	name,
    unit_price,
    (unit_price*1.1) as new_price
from products;

-- Where clause

