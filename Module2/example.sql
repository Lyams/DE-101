select
city , 
count (distinct order_id) as number_orders,
sum(sales) as revune
from public.orders
where category in ('Furniture', 'Technology') and extract ('year' from order_date ) = 2018
group by 1
having sum(sales) > 10000
order by revune desc;

/*select  distinct 
category
from  orders o */
select count(*) as all, count(distinct orders.order_id) from orders
where order_id in (select distinct order_id from "returns" r2)

select date_trunc('day', now());