-- Query : the name of the customer along with address, points and level-type.
-- level- type:
		-- bronze <1500 points
        -- silver < 2000 points
        -- gold > 2000 points 
use sql_store;
select concat(first_name, " ",last_name)  as full_name, address, points , 'bronze' as level_type
	from sql_store.customers
    where points <= 1500
union
select concat(first_name, " ", last_name) as full_name, address, points , 'silver' as level_type
	from sql_store.customers
    where points between 1500 and 2000
union
select concat(first_name, " ",last_name)  as full_name, address, points , 'gold' as level_type
	from sql_store.customers
    where points >2000
    order by full_name asc; 