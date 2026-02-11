SELECT 
    customer_id, name, city
FROM
    customers
WHERE
    city = 'delhi';

SELECT 
    ROUND(AVG(rating), 2) avg_rating
FROM
    restaurants
WHERE
    city = 'mumbai';

SELECT DISTINCT
    customer_id, name
FROM
    customers
        JOIN
    orders USING (customer_id);

SELECT 
    c.customer_id, c.name, COUNT(o.order_id) total_orders
FROM
    customers c
        LEFT JOIN
    orders o USING (customer_id)
GROUP BY c.customer_id , c.name;

SELECT 
    o.restaurant_id, r.name, SUM(o.total_amount) total_revenue
FROM
    orders o
        JOIN
    restaurants r USING (restaurant_id)
GROUP BY o.restaurant_id
ORDER BY total_revenue DESC;

SELECT 
    restaurant_id, name, ROUND(AVG(rating), 2) avg_rating
FROM
    restaurants
GROUP BY restaurant_id , name
ORDER BY avg_rating DESC
LIMIT 5;

SELECT 
    c.customer_id, c.name
FROM
    customers c
        LEFT JOIN
    orders o USING (customer_id)
WHERE
    order_id IS NULL;

SELECT 
    c.customer_id, c.name, COUNT(o.order_id) total_order
FROM
    orders o
        JOIN
    customers c USING (customer_id)
WHERE
    city = 'mumbai'
GROUP BY c.customer_id , c.name;

SELECT 
    *
FROM
    orders
WHERE
    order_date >= CURDATE() - INTERVAL 30 DAY;

SELECT 
    od.partner_id, dp.name, COUNT(order_id) count_of_delivery
FROM
    orderdelivery od
        JOIN
    deliverypartners dp USING (partner_id)
GROUP BY od.partner_id , dp.name
HAVING count_of_delivery > 1
ORDER BY count_of_delivery;

SELECT 
    c.customer_id, c.name
FROM
    customers c
        JOIN
    orders o USING (customer_id)
GROUP BY c.customer_id , c.name
HAVING COUNT(DISTINCT o.order_date) = 3;

SELECT 
    dp.partner_id,
    dp.name,
    COUNT(DISTINCT o.customer_id) diff_customer
FROM
    deliverypartners dp
        JOIN
    orderdelivery od ON dp.partner_id = od.partner_id
        JOIN
    orders o ON o.order_id = od.order_id
GROUP BY dp.partner_id , dp.name
ORDER BY diff_customer DESC
LIMIT 1;

with t as (select customer_id,name,order_id,
       restaurant_id,order_date,city 
from customers
join orders using (customer_id))
select * 
from t t1 
join t t2
on t1.restaurant_id = t2.restaurant_id and
   t1.city = t2.city and
   t1.customer_id <> t2.customer_id and
   t1.customer_id < t2.customer_id and
   t1.order_date <> t2.order_date ;








